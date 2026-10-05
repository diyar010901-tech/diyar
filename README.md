# MobileHub — Supabase-ready website

This version turns the original single-file MobileHub app into a deployable frontend with a real Supabase/PostgreSQL backend and protected admin dashboard.

## Project structure

- `index.html` — public website
- `admin.html` — protected admin dashboard
- `css/styles.css` — public styles
- `css/admin.css` — admin styles
- `js/app.js` — public frontend + database reads
- `js/admin.js` — authentication + phone CRUD
- `js/supabase.js` — Supabase project configuration
- `supabase/schema.sql` — tables, triggers, RLS and storage policies
- `supabase/seed.sql` — imports the phone/news/upcoming sample data from the original MobileHub
- `data/site-data.json` — original source data retained for reference

## Supabase setup

1. Create a Supabase project.
2. Open SQL Editor and run `supabase/schema.sql`.
3. Run `supabase/seed.sql` to migrate the original MobileHub sample data.
4. In Supabase Authentication, create the first admin user with email/password. Disable public signups if you want an admin-only dashboard.
5. Copy the new user's UUID and run:

```sql
insert into public.profiles (id, email, role)
values ('YOUR_AUTH_USER_UUID', 'YOUR_ADMIN_EMAIL', 'admin')
on conflict (id) do update set role='admin';
```

6. Open `js/supabase.js` and replace the two placeholders with your Supabase project URL and publishable/anon key. Never use a service-role/secret key in browser code.
7. Deploy the entire folder to a static host.

## Local testing

Do not open `index.html` directly with `file://`, because the browser module/database requests need HTTP. Run a local server, for example:

```bash
python3 -m http.server 8000
```

Then open `http://localhost:8000`.

Admin dashboard: `http://localhost:8000/admin.html`

## What is live

- Public phone database from PostgreSQL
- Brand data
- Phone search/filtering
- Phone detail pages
- Compare list stored per visitor
- Published news
- Upcoming phones
- Admin email/password login
- Admin-only phone create/update/delete
- Row Level Security policies
- Public image storage buckets for phone/news images

## Next production upgrades

The schema is ready for price records and news CRUD. The current admin UI focuses on phone CRUD so it remains simple and reliable. Add price/news editors next if you want the admin panel to manage every content type.
