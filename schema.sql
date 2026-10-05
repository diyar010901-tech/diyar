-- MobileHub Supabase schema
create extension if not exists pgcrypto;

create table if not exists public.profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  email text,
  role text not null default 'user' check (role in ('user','admin')),
  created_at timestamptz not null default now()
);

create table if not exists public.brands (
  id uuid primary key default gen_random_uuid(),
  name text not null unique,
  slug text not null unique,
  logo_url text,
  created_at timestamptz not null default now()
);

create table if not exists public.phones (
  id uuid primary key default gen_random_uuid(),
  brand_id uuid not null references public.brands(id) on delete restrict,
  name text not null,
  slug text not null unique,
  price_usd numeric(12,2) not null default 0,
  release_date date,
  screen_size numeric(4,2),
  display text,
  processor text,
  ram_gb integer,
  storage text,
  cameras text,
  main_camera_mp integer,
  battery_mah integer,
  charging_w integer,
  operating_system text,
  dimensions text,
  connectivity text,
  colors text[] not null default '{}',
  pros text[] not null default '{}',
  cons text[] not null default '{}',
  tags text[] not null default '{}',
  image_url text,
  published boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.phone_prices (
  id uuid primary key default gen_random_uuid(),
  phone_id uuid not null references public.phones(id) on delete cascade,
  country text not null,
  currency text not null,
  price numeric(12,2) not null,
  retailer text,
  source_url text,
  checked_at timestamptz not null default now(),
  unique(phone_id, country, retailer)
);

create table if not exists public.news (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  slug text not null unique,
  category text not null default 'News',
  summary text,
  content text,
  image_url text,
  published boolean not null default false,
  published_at timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.upcoming_phones (
  id uuid primary key default gen_random_uuid(),
  phone_name text not null,
  brand text not null,
  expected_month date,
  note text,
  published boolean not null default true,
  created_at timestamptz not null default now()
);

create index if not exists phones_brand_idx on public.phones(brand_id);
create index if not exists phones_release_idx on public.phones(release_date desc);
create index if not exists phones_price_idx on public.phones(price_usd);
create index if not exists news_published_idx on public.news(published, published_at desc);
create index if not exists prices_phone_idx on public.phone_prices(phone_id);

create or replace function public.set_updated_at()
returns trigger language plpgsql as $$
begin new.updated_at = now(); return new; end; $$;

drop trigger if exists phones_updated_at on public.phones;
create trigger phones_updated_at before update on public.phones for each row execute function public.set_updated_at();
drop trigger if exists news_updated_at on public.news;
create trigger news_updated_at before update on public.news for each row execute function public.set_updated_at();

create or replace function public.is_admin()
returns boolean language sql stable security definer set search_path = public
as $$ select exists (select 1 from public.profiles p where p.id = auth.uid() and p.role = 'admin'); $$;

alter table public.profiles enable row level security;
alter table public.brands enable row level security;
alter table public.phones enable row level security;
alter table public.phone_prices enable row level security;
alter table public.news enable row level security;
alter table public.upcoming_phones enable row level security;

drop policy if exists profiles_self_read on public.profiles;
create policy profiles_self_read on public.profiles for select to authenticated using (id = auth.uid());
drop policy if exists profiles_admin_all on public.profiles;
create policy profiles_admin_all on public.profiles for all to authenticated using (public.is_admin()) with check (public.is_admin());

drop policy if exists brands_public_read on public.brands;
create policy brands_public_read on public.brands for select using (true);
drop policy if exists brands_admin_write on public.brands;
create policy brands_admin_write on public.brands for all to authenticated using (public.is_admin()) with check (public.is_admin());

drop policy if exists phones_public_read on public.phones;
create policy phones_public_read on public.phones for select using (published = true or public.is_admin());
drop policy if exists phones_admin_write on public.phones;
create policy phones_admin_write on public.phones for all to authenticated using (public.is_admin()) with check (public.is_admin());

drop policy if exists prices_public_read on public.phone_prices;
create policy prices_public_read on public.phone_prices for select using (true);
drop policy if exists prices_admin_write on public.phone_prices;
create policy prices_admin_write on public.phone_prices for all to authenticated using (public.is_admin()) with check (public.is_admin());

drop policy if exists news_public_read on public.news;
create policy news_public_read on public.news for select using (published = true or public.is_admin());
drop policy if exists news_admin_write on public.news;
create policy news_admin_write on public.news for all to authenticated using (public.is_admin()) with check (public.is_admin());

drop policy if exists upcoming_public_read on public.upcoming_phones;
create policy upcoming_public_read on public.upcoming_phones for select using (published = true or public.is_admin());
drop policy if exists upcoming_admin_write on public.upcoming_phones;
create policy upcoming_admin_write on public.upcoming_phones for all to authenticated using (public.is_admin()) with check (public.is_admin());

-- Create the storage buckets manually in Dashboard if your project disallows storage SQL.
insert into storage.buckets (id, name, public) values ('phone-images','phone-images',true) on conflict (id) do nothing;
insert into storage.buckets (id, name, public) values ('news-images','news-images',true) on conflict (id) do nothing;

drop policy if exists phone_images_public_read on storage.objects;
create policy phone_images_public_read on storage.objects for select using (bucket_id = 'phone-images');
drop policy if exists phone_images_admin_insert on storage.objects;
create policy phone_images_admin_insert on storage.objects for insert to authenticated with check (bucket_id = 'phone-images' and public.is_admin());
drop policy if exists phone_images_admin_update on storage.objects;
create policy phone_images_admin_update on storage.objects for update to authenticated using (bucket_id = 'phone-images' and public.is_admin()) with check (bucket_id = 'phone-images' and public.is_admin());
drop policy if exists phone_images_admin_delete on storage.objects;
create policy phone_images_admin_delete on storage.objects for delete to authenticated using (bucket_id = 'phone-images' and public.is_admin());

drop policy if exists news_images_public_read on storage.objects;
create policy news_images_public_read on storage.objects for select using (bucket_id = 'news-images');
drop policy if exists news_images_admin_insert on storage.objects;
create policy news_images_admin_insert on storage.objects for insert to authenticated with check (bucket_id = 'news-images' and public.is_admin());
drop policy if exists news_images_admin_update on storage.objects;
create policy news_images_admin_update on storage.objects for update to authenticated using (bucket_id = 'news-images' and public.is_admin()) with check (bucket_id = 'news-images' and public.is_admin());
drop policy if exists news_images_admin_delete on storage.objects;
create policy news_images_admin_delete on storage.objects for delete to authenticated using (bucket_id = 'news-images' and public.is_admin());
