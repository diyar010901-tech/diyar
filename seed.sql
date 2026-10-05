-- MobileHub sample data migrated from the original HTML/JSON.

insert into public.brands(name,slug) values ('ASUS','asus') on conflict(name) do update set slug=excluded.slug;
insert into public.brands(name,slug) values ('Apple','apple') on conflict(name) do update set slug=excluded.slug;
insert into public.brands(name,slug) values ('Google','google') on conflict(name) do update set slug=excluded.slug;
insert into public.brands(name,slug) values ('Honor','honor') on conflict(name) do update set slug=excluded.slug;
insert into public.brands(name,slug) values ('Huawei','huawei') on conflict(name) do update set slug=excluded.slug;
insert into public.brands(name,slug) values ('Motorola','motorola') on conflict(name) do update set slug=excluded.slug;
insert into public.brands(name,slug) values ('Nokia','nokia') on conflict(name) do update set slug=excluded.slug;
insert into public.brands(name,slug) values ('Nothing','nothing') on conflict(name) do update set slug=excluded.slug;
insert into public.brands(name,slug) values ('OPPO','oppo') on conflict(name) do update set slug=excluded.slug;
insert into public.brands(name,slug) values ('OnePlus','oneplus') on conflict(name) do update set slug=excluded.slug;
insert into public.brands(name,slug) values ('Realme','realme') on conflict(name) do update set slug=excluded.slug;
insert into public.brands(name,slug) values ('Redmi','redmi') on conflict(name) do update set slug=excluded.slug;
insert into public.brands(name,slug) values ('Samsung','samsung') on conflict(name) do update set slug=excluded.slug;
insert into public.brands(name,slug) values ('Sony','sony') on conflict(name) do update set slug=excluded.slug;
insert into public.brands(name,slug) values ('Xiaomi','xiaomi') on conflict(name) do update set slug=excluded.slug;
insert into public.brands(name,slug) values ('vivo','vivo') on conflict(name) do update set slug=excluded.slug;

insert into public.phones(brand_id,name,slug,price_usd,release_date,screen_size,display,processor,ram_gb,storage,cameras,main_camera_mp,battery_mah,charging_w,operating_system,dimensions,connectivity,colors,pros,cons,tags)
select id,'iPhone 17 Pro','iphone-17-pro',1099,'2025-09-19',6.3,'6.3" LTPO OLED, 120Hz','Apple A19 Pro',12,'256GB/512GB/1TB/2TB','48MP main + 48MP ultrawide + 48MP 4x tele; 18MP selfie',48,4250,35,'iOS 26','150 x 71.9 x 8.75 mm, 206 g','5G, Wi-Fi 7, Bluetooth 6',ARRAY['Cosmic Orange','Deep Blue','Silver']::text[],ARRAY['Fastest chip','Strong video','Good cooling']::text[],ARRAY['Expensive','Modest charging speed']::text[],ARRAY['flagship','camera','gaming']::text[] from public.brands where name='Apple'
on conflict(slug) do update set price_usd=excluded.price_usd, updated_at=now();
insert into public.phones(brand_id,name,slug,price_usd,release_date,screen_size,display,processor,ram_gb,storage,cameras,main_camera_mp,battery_mah,charging_w,operating_system,dimensions,connectivity,colors,pros,cons,tags)
select id,'Galaxy S25 Ultra','galaxy-s25-ultra',1299,'2025-02-07',6.9,'6.9" QHD+ AMOLED, 120Hz','Snapdragon 8 Elite for Galaxy',12,'256GB/512GB/1TB','200MP main + 50MP 5x + 10MP 3x + 50MP ultrawide',200,5000,45,'Android 15, One UI 7','162.8 x 77.6 x 8.2 mm, 218 g','5G, Wi-Fi 7, Bluetooth 5.4',ARRAY['Titanium Black','Titanium Gray','Titanium Silverblue']::text[],ARRAY['Versatile cameras','S Pen','Long software support']::text[],ARRAY['Heavy','High price']::text[],ARRAY['flagship','camera','gaming']::text[] from public.brands where name='Samsung'
on conflict(slug) do update set price_usd=excluded.price_usd, updated_at=now();
insert into public.phones(brand_id,name,slug,price_usd,release_date,screen_size,display,processor,ram_gb,storage,cameras,main_camera_mp,battery_mah,charging_w,operating_system,dimensions,connectivity,colors,pros,cons,tags)
select id,'Pixel 10 Pro','pixel-10-pro',999,'2025-08-28',6.3,'6.3" LTPO OLED, 120Hz','Google Tensor G5',16,'128GB/256GB/512GB/1TB','50MP main + 48MP ultrawide + 48MP 5x tele; 42MP selfie',50,4870,30,'Android 16','152.8 x 72 x 8.6 mm, 207 g','5G, Wi-Fi 7, Bluetooth 6',ARRAY['Obsidian','Porcelain','Moonstone']::text[],ARRAY['Best AI features','7 years of updates','Compact']::text[],ARRAY['Slower under heavy load']::text[],ARRAY['flagship','camera']::text[] from public.brands where name='Google'
on conflict(slug) do update set price_usd=excluded.price_usd, updated_at=now();
insert into public.phones(brand_id,name,slug,price_usd,release_date,screen_size,display,processor,ram_gb,storage,cameras,main_camera_mp,battery_mah,charging_w,operating_system,dimensions,connectivity,colors,pros,cons,tags)
select id,'Xiaomi 15 Ultra','xiaomi-15-ultra',1299,'2025-03-02',6.73,'6.73" LTPO AMOLED WQHD+, 120Hz','Snapdragon 8 Elite',16,'256GB/512GB/1TB','50MP 1-inch main + 200MP 4.3x + 50MP 3x + 50MP ultrawide',200,5410,90,'Android 15, HyperOS 2','161.3 x 75.3 x 9.48 mm, 226 g','5G, Wi-Fi 7, Bluetooth 6',ARRAY['Black','White','Silver Chrome']::text[],ARRAY['Excellent zoom','Fast charging']::text[],ARRAY['Large and heavy','Limited availability']::text[],ARRAY['flagship','camera']::text[] from public.brands where name='Xiaomi'
on conflict(slug) do update set price_usd=excluded.price_usd, updated_at=now();
insert into public.phones(brand_id,name,slug,price_usd,release_date,screen_size,display,processor,ram_gb,storage,cameras,main_camera_mp,battery_mah,charging_w,operating_system,dimensions,connectivity,colors,pros,cons,tags)
select id,'Redmi Note 14 Pro+ 5G','redmi-note-14-pro-5g',399,'2025-01-10',6.67,'6.67" AMOLED 1.5K, 120Hz','Snapdragon 7s Gen 3',8,'256GB/512GB','200MP main + 8MP ultrawide + 2MP macro; 20MP selfie',200,5110,90,'Android 14, HyperOS','162.5 x 74.7 x 8.7 mm, 205 g','5G, Wi-Fi 6, Bluetooth 5.2',ARRAY['Midnight Black','Coral Purple','Aurora Blue']::text[],ARRAY['Great screen','Very fast charging']::text[],ARRAY['Mid-range chip','Ads in software']::text[],ARRAY['budget','value','student']::text[] from public.brands where name='Redmi'
on conflict(slug) do update set price_usd=excluded.price_usd, updated_at=now();
insert into public.phones(brand_id,name,slug,price_usd,release_date,screen_size,display,processor,ram_gb,storage,cameras,main_camera_mp,battery_mah,charging_w,operating_system,dimensions,connectivity,colors,pros,cons,tags)
select id,'OnePlus 13','oneplus-13',899,'2025-01-10',6.82,'6.82" LTPO AMOLED QHD+, 120Hz','Snapdragon 8 Elite',12,'256GB/512GB/1TB','50MP main + 50MP 3x tele + 50MP ultrawide; 32MP selfie',50,6000,100,'Android 15, OxygenOS 15','162.9 x 76.5 x 8.5 mm, 210 g','5G, Wi-Fi 7, Bluetooth 5.4',ARRAY['Black Eclipse','Arctic Dawn','Midnight Ocean']::text[],ARRAY['Huge battery','100W charging']::text[],ARRAY['No official IP69 in all regions']::text[],ARRAY['flagship','battery','gaming','value']::text[] from public.brands where name='OnePlus'
on conflict(slug) do update set price_usd=excluded.price_usd, updated_at=now();
insert into public.phones(brand_id,name,slug,price_usd,release_date,screen_size,display,processor,ram_gb,storage,cameras,main_camera_mp,battery_mah,charging_w,operating_system,dimensions,connectivity,colors,pros,cons,tags)
select id,'Nothing Phone (3)','nothing-phone-3',799,'2025-07-15',6.67,'6.67" AMOLED, 120Hz','Snapdragon 8s Gen 4',12,'256GB/512GB','50MP main + 50MP 3x periscope + 50MP ultrawide; 50MP selfie',50,5500,65,'Android 15, Nothing OS 3.5','160.6 x 75.6 x 9 mm, 218 g','5G, Wi-Fi 7, Bluetooth 5.4',ARRAY['White','Black']::text[],ARRAY['Distinct design','Clean software']::text[],ARRAY['Not the top chip']::text[],ARRAY['flagship','value']::text[] from public.brands where name='Nothing'
on conflict(slug) do update set price_usd=excluded.price_usd, updated_at=now();
insert into public.phones(brand_id,name,slug,price_usd,release_date,screen_size,display,processor,ram_gb,storage,cameras,main_camera_mp,battery_mah,charging_w,operating_system,dimensions,connectivity,colors,pros,cons,tags)
select id,'Galaxy A56 5G','galaxy-a56-5g',499,'2025-03-26',6.7,'6.7" Super AMOLED, 120Hz','Exynos 1580',8,'128GB/256GB','50MP main + 12MP ultrawide + 5MP macro; 12MP selfie',50,5000,45,'Android 15, One UI 7','162.2 x 77.5 x 7.4 mm, 198 g','5G, Wi-Fi 6E, Bluetooth 5.3',ARRAY['Awesome Graphite','Olive','Lightgray']::text[],ARRAY['Slim and light','6 years of updates']::text[],ARRAY['Mid-range performance']::text[],ARRAY['budget','value','student']::text[] from public.brands where name='Samsung'
on conflict(slug) do update set price_usd=excluded.price_usd, updated_at=now();
insert into public.phones(brand_id,name,slug,price_usd,release_date,screen_size,display,processor,ram_gb,storage,cameras,main_camera_mp,battery_mah,charging_w,operating_system,dimensions,connectivity,colors,pros,cons,tags)
select id,'ROG Phone 9 Pro','rog-phone-9-pro',1199,'2024-11-19',6.78,'6.78" AMOLED, 185Hz','Snapdragon 8 Elite',16,'512GB','50MP main + 13MP ultrawide + 32MP 3x tele; 32MP selfie',50,5800,65,'Android 15, ROG UI','163.8 x 76.8 x 8.9 mm, 227 g','5G, Wi-Fi 7, Bluetooth 5.4',ARRAY['Phantom Black']::text[],ARRAY['Best gaming controls','Active cooling accessory']::text[],ARRAY['Bulky','Average cameras']::text[],ARRAY['gaming','flagship','battery']::text[] from public.brands where name='ASUS'
on conflict(slug) do update set price_usd=excluded.price_usd, updated_at=now();
insert into public.phones(brand_id,name,slug,price_usd,release_date,screen_size,display,processor,ram_gb,storage,cameras,main_camera_mp,battery_mah,charging_w,operating_system,dimensions,connectivity,colors,pros,cons,tags)
select id,'Xperia 1 VII','xperia-1-vii',1399,'2025-06-12',6.5,'6.5" FHD+ OLED, 120Hz','Snapdragon 8 Elite',12,'256GB/512GB','48MP main + 48MP 3.5-7.1x tele + 48MP ultrawide; 12MP selfie',48,5000,30,'Android 15','162 x 74 x 8.2 mm, 197 g','5G, Wi-Fi 7, Bluetooth 5.4',ARRAY['Black','Orchid Purple','Moss Green']::text[],ARRAY['Headphone jack','microSD slot','Pro camera app']::text[],ARRAY['Highest price in class']::text[],ARRAY['flagship','camera']::text[] from public.brands where name='Sony'
on conflict(slug) do update set price_usd=excluded.price_usd, updated_at=now();
insert into public.phones(brand_id,name,slug,price_usd,release_date,screen_size,display,processor,ram_gb,storage,cameras,main_camera_mp,battery_mah,charging_w,operating_system,dimensions,connectivity,colors,pros,cons,tags)
select id,'Magic7 Pro','magic7-pro',1299,'2025-01-15',6.8,'6.8" LTPO OLED, 120Hz','Snapdragon 8 Elite',12,'512GB','50MP main + 200MP 3x tele + 50MP ultrawide; 50MP selfie',200,5270,100,'Android 15, MagicOS 9','162.7 x 77.1 x 8.8 mm, 223 g','5G, Wi-Fi 7, Bluetooth 5.4',ARRAY['Black','Lunar Shadow Grey']::text[],ARRAY['Bright display','Fast charging']::text[],ARRAY['Battery smaller in Europe']::text[],ARRAY['flagship','camera']::text[] from public.brands where name='Honor'
on conflict(slug) do update set price_usd=excluded.price_usd, updated_at=now();
insert into public.phones(brand_id,name,slug,price_usd,release_date,screen_size,display,processor,ram_gb,storage,cameras,main_camera_mp,battery_mah,charging_w,operating_system,dimensions,connectivity,colors,pros,cons,tags)
select id,'Razr 60 Ultra','razr-60-ultra',1299,'2025-05-15',7,'7" LTPO pOLED foldable, 165Hz','Snapdragon 8 Elite',16,'512GB','50MP main + 50MP ultrawide; 50MP selfie',50,4700,68,'Android 15','171.5 x 74 x 7.3 mm unfolded, 199 g','5G, Wi-Fi 7, Bluetooth 5.4',ARRAY['Rio Red','Scarab','Mountain Trail']::text[],ARRAY['Large cover screen','Compact when folded']::text[],ARRAY['Battery is average']::text[],ARRAY['flagship']::text[] from public.brands where name='Motorola'
on conflict(slug) do update set price_usd=excluded.price_usd, updated_at=now();
insert into public.phones(brand_id,name,slug,price_usd,release_date,screen_size,display,processor,ram_gb,storage,cameras,main_camera_mp,battery_mah,charging_w,operating_system,dimensions,connectivity,colors,pros,cons,tags)
select id,'Find X8 Pro','find-x8-pro',1099,'2024-11-21',6.78,'6.78" LTPO AMOLED, 120Hz','MediaTek Dimensity 9400',16,'512GB','50MP main + 50MP 3x tele + 50MP 6x tele + 50MP ultrawide',50,5910,80,'Android 15, ColorOS 15','162.3 x 76.7 x 8.3 mm, 215 g','5G, Wi-Fi 7, Bluetooth 5.4',ARRAY['Pearl White','Space Black']::text[],ARRAY['Two periscope lenses','Big battery']::text[],ARRAY['Not sold in the US']::text[],ARRAY['flagship','camera','battery']::text[] from public.brands where name='OPPO'
on conflict(slug) do update set price_usd=excluded.price_usd, updated_at=now();
insert into public.phones(brand_id,name,slug,price_usd,release_date,screen_size,display,processor,ram_gb,storage,cameras,main_camera_mp,battery_mah,charging_w,operating_system,dimensions,connectivity,colors,pros,cons,tags)
select id,'X200 Pro','x200-pro',1099,'2024-12-19',6.78,'6.78" LTPO AMOLED, 120Hz','MediaTek Dimensity 9400',16,'512GB','50MP main + 200MP 3.7x tele + 50MP ultrawide; 32MP selfie',200,6000,90,'Android 15, Funtouch OS 15','162 x 77.6 x 8.2 mm, 223 g','5G, Wi-Fi 7, Bluetooth 5.4',ARRAY['Cosmos Black','Titanium']::text[],ARRAY['Telephoto quality','Battery life']::text[],ARRAY['Limited regions']::text[],ARRAY['flagship','camera','battery']::text[] from public.brands where name='vivo'
on conflict(slug) do update set price_usd=excluded.price_usd, updated_at=now();
insert into public.phones(brand_id,name,slug,price_usd,release_date,screen_size,display,processor,ram_gb,storage,cameras,main_camera_mp,battery_mah,charging_w,operating_system,dimensions,connectivity,colors,pros,cons,tags)
select id,'GT 7 Pro','gt-7-pro',729,'2024-11-26',6.78,'6.78" LTPO AMOLED, 120Hz','Snapdragon 8 Elite',12,'256GB/512GB','50MP main + 50MP 3x tele + 8MP ultrawide; 16MP selfie',50,6500,120,'Android 15, Realme UI 6','162.5 x 76.9 x 8.5 mm, 222.8 g','5G, Wi-Fi 7, Bluetooth 5.4',ARRAY['Mars Orange','Galaxy Grey']::text[],ARRAY['Flagship chip for less','120W charging']::text[],ARRAY['Software less polished']::text[],ARRAY['gaming','battery','value']::text[] from public.brands where name='Realme'
on conflict(slug) do update set price_usd=excluded.price_usd, updated_at=now();
insert into public.phones(brand_id,name,slug,price_usd,release_date,screen_size,display,processor,ram_gb,storage,cameras,main_camera_mp,battery_mah,charging_w,operating_system,dimensions,connectivity,colors,pros,cons,tags)
select id,'Pura 70 Ultra','pura-70-ultra',1380,'2024-04-18',6.8,'6.8" LTPO OLED, 120Hz','HiSilicon Kirin 9010',16,'512GB/1TB','50MP 1-inch main + 50MP periscope + 40MP ultrawide; 13MP selfie',50,5200,100,'HarmonyOS 4.2','162.6 x 75.1 x 8.4 mm, 226 g','5G, Wi-Fi 7, Bluetooth 5.2',ARRAY['Black','Brown','Green']::text[],ARRAY['Pop-out main camera','Strong build']::text[],ARRAY['No Google services']::text[],ARRAY['flagship','camera']::text[] from public.brands where name='Huawei'
on conflict(slug) do update set price_usd=excluded.price_usd, updated_at=now();
insert into public.phones(brand_id,name,slug,price_usd,release_date,screen_size,display,processor,ram_gb,storage,cameras,main_camera_mp,battery_mah,charging_w,operating_system,dimensions,connectivity,colors,pros,cons,tags)
select id,'G42 5G','g42-5g',229,'2023-07-12',6.56,'6.56" LCD, 90Hz','Snapdragon 480+',6,'128GB','50MP main + 2MP macro + 2MP depth; 8MP selfie',50,5000,20,'Android 13','165.2 x 75.9 x 8.5 mm, 194 g','5G, Wi-Fi 5, Bluetooth 5.1',ARRAY['So Grey','So Purple']::text[],ARRAY['Repairable','Low price']::text[],ARRAY['Basic performance','Slow charging']::text[],ARRAY['budget','student']::text[] from public.brands where name='Nokia'
on conflict(slug) do update set price_usd=excluded.price_usd, updated_at=now();

insert into public.upcoming_phones(phone_name,brand,expected_month,note) values ('Samsung Galaxy S27 Ultra','Samsung','2027-02-01','Expected early 2027, unconfirmed');
insert into public.upcoming_phones(phone_name,brand,expected_month,note) values ('Xiaomi 18 Ultra','Xiaomi','2027-03-01','Expected spring 2027, unconfirmed');
insert into public.upcoming_phones(phone_name,brand,expected_month,note) values ('Nothing Phone (4)','Nothing','2027-07-01','Rumoured mid 2027');
insert into public.upcoming_phones(phone_name,brand,expected_month,note) values ('Google Pixel 11 Pro','Google','2027-08-01','Expected August 2027, unconfirmed');
insert into public.upcoming_phones(phone_name,brand,expected_month,note) values ('Apple iPhone 18 Pro','Apple','2027-09-01','Expected September 2027, unconfirmed');

insert into public.news(title,slug,category,summary,published,published_at) values ('Silicon-carbon batteries: why 6,000mAh phones keep getting slimmer','silicon-carbon-batteries-why-6-000mah-phones-keep-getting-slimmer','Tech','Denser cells now fit more capacity in the same body, and mid-range phones are starting to follow.',true,now()) on conflict(slug) do nothing;
insert into public.news(title,slug,category,summary,published,published_at) values ('Seven years of updates is becoming a buying factor','seven-years-of-updates-is-becoming-a-buying-factor','Update','Longer software support lowers the real cost of owning a phone. Check each brand’s policy before you buy.',true,now()) on conflict(slug) do nothing;
insert into public.news(title,slug,category,summary,published,published_at) values ('Wi-Fi 7 explained: do you need it yet?','wi-fi-7-explained-do-you-need-it-yet','Tech','Faster, steadier connections need a Wi-Fi 7 router too. Most people will not notice a difference today.',true,now()) on conflict(slug) do nothing;
insert into public.news(title,slug,category,summary,published,published_at) values ('Telephoto cameras trickle down to cheaper phones','telephoto-cameras-trickle-down-to-cheaper-phones','Leak','Rumours point to periscope lenses reaching sub-$700 models. Treat this as unconfirmed.',true,now()) on conflict(slug) do nothing;

insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United States','$',1099,'MobileHub estimate' from public.phones where slug='iphone-17-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United Kingdom','£',934,'MobileHub estimate' from public.phones where slug='iphone-17-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Eurozone','€',1077,'MobileHub estimate' from public.phones where slug='iphone-17-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'India','₹',101108,'MobileHub estimate' from public.phones where slug='iphone-17-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'UAE','AED ',4286,'MobileHub estimate' from public.phones where slug='iphone-17-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Japan','¥',167048,'MobileHub estimate' from public.phones where slug='iphone-17-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United States','$',1299,'MobileHub estimate' from public.phones where slug='galaxy-s25-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United Kingdom','£',1104,'MobileHub estimate' from public.phones where slug='galaxy-s25-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Eurozone','€',1273,'MobileHub estimate' from public.phones where slug='galaxy-s25-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'India','₹',119508,'MobileHub estimate' from public.phones where slug='galaxy-s25-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'UAE','AED ',5066,'MobileHub estimate' from public.phones where slug='galaxy-s25-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Japan','¥',197448,'MobileHub estimate' from public.phones where slug='galaxy-s25-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United States','$',999,'MobileHub estimate' from public.phones where slug='pixel-10-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United Kingdom','£',849,'MobileHub estimate' from public.phones where slug='pixel-10-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Eurozone','€',979,'MobileHub estimate' from public.phones where slug='pixel-10-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'India','₹',91908,'MobileHub estimate' from public.phones where slug='pixel-10-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'UAE','AED ',3896,'MobileHub estimate' from public.phones where slug='pixel-10-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Japan','¥',151848,'MobileHub estimate' from public.phones where slug='pixel-10-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United States','$',1299,'MobileHub estimate' from public.phones where slug='xiaomi-15-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United Kingdom','£',1104,'MobileHub estimate' from public.phones where slug='xiaomi-15-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Eurozone','€',1273,'MobileHub estimate' from public.phones where slug='xiaomi-15-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'India','₹',119508,'MobileHub estimate' from public.phones where slug='xiaomi-15-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'UAE','AED ',5066,'MobileHub estimate' from public.phones where slug='xiaomi-15-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Japan','¥',197448,'MobileHub estimate' from public.phones where slug='xiaomi-15-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United States','$',399,'MobileHub estimate' from public.phones where slug='redmi-note-14-pro-5g';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United Kingdom','£',339,'MobileHub estimate' from public.phones where slug='redmi-note-14-pro-5g';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Eurozone','€',391,'MobileHub estimate' from public.phones where slug='redmi-note-14-pro-5g';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'India','₹',36708,'MobileHub estimate' from public.phones where slug='redmi-note-14-pro-5g';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'UAE','AED ',1556,'MobileHub estimate' from public.phones where slug='redmi-note-14-pro-5g';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Japan','¥',60648,'MobileHub estimate' from public.phones where slug='redmi-note-14-pro-5g';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United States','$',899,'MobileHub estimate' from public.phones where slug='oneplus-13';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United Kingdom','£',764,'MobileHub estimate' from public.phones where slug='oneplus-13';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Eurozone','€',881,'MobileHub estimate' from public.phones where slug='oneplus-13';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'India','₹',82708,'MobileHub estimate' from public.phones where slug='oneplus-13';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'UAE','AED ',3506,'MobileHub estimate' from public.phones where slug='oneplus-13';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Japan','¥',136648,'MobileHub estimate' from public.phones where slug='oneplus-13';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United States','$',799,'MobileHub estimate' from public.phones where slug='nothing-phone-3';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United Kingdom','£',679,'MobileHub estimate' from public.phones where slug='nothing-phone-3';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Eurozone','€',783,'MobileHub estimate' from public.phones where slug='nothing-phone-3';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'India','₹',73508,'MobileHub estimate' from public.phones where slug='nothing-phone-3';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'UAE','AED ',3116,'MobileHub estimate' from public.phones where slug='nothing-phone-3';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Japan','¥',121448,'MobileHub estimate' from public.phones where slug='nothing-phone-3';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United States','$',499,'MobileHub estimate' from public.phones where slug='galaxy-a56-5g';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United Kingdom','£',424,'MobileHub estimate' from public.phones where slug='galaxy-a56-5g';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Eurozone','€',489,'MobileHub estimate' from public.phones where slug='galaxy-a56-5g';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'India','₹',45908,'MobileHub estimate' from public.phones where slug='galaxy-a56-5g';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'UAE','AED ',1946,'MobileHub estimate' from public.phones where slug='galaxy-a56-5g';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Japan','¥',75848,'MobileHub estimate' from public.phones where slug='galaxy-a56-5g';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United States','$',1199,'MobileHub estimate' from public.phones where slug='rog-phone-9-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United Kingdom','£',1019,'MobileHub estimate' from public.phones where slug='rog-phone-9-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Eurozone','€',1175,'MobileHub estimate' from public.phones where slug='rog-phone-9-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'India','₹',110308,'MobileHub estimate' from public.phones where slug='rog-phone-9-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'UAE','AED ',4676,'MobileHub estimate' from public.phones where slug='rog-phone-9-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Japan','¥',182248,'MobileHub estimate' from public.phones where slug='rog-phone-9-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United States','$',1399,'MobileHub estimate' from public.phones where slug='xperia-1-vii';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United Kingdom','£',1189,'MobileHub estimate' from public.phones where slug='xperia-1-vii';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Eurozone','€',1371,'MobileHub estimate' from public.phones where slug='xperia-1-vii';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'India','₹',128708,'MobileHub estimate' from public.phones where slug='xperia-1-vii';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'UAE','AED ',5456,'MobileHub estimate' from public.phones where slug='xperia-1-vii';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Japan','¥',212648,'MobileHub estimate' from public.phones where slug='xperia-1-vii';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United States','$',1299,'MobileHub estimate' from public.phones where slug='magic7-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United Kingdom','£',1104,'MobileHub estimate' from public.phones where slug='magic7-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Eurozone','€',1273,'MobileHub estimate' from public.phones where slug='magic7-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'India','₹',119508,'MobileHub estimate' from public.phones where slug='magic7-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'UAE','AED ',5066,'MobileHub estimate' from public.phones where slug='magic7-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Japan','¥',197448,'MobileHub estimate' from public.phones where slug='magic7-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United States','$',1299,'MobileHub estimate' from public.phones where slug='razr-60-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United Kingdom','£',1104,'MobileHub estimate' from public.phones where slug='razr-60-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Eurozone','€',1273,'MobileHub estimate' from public.phones where slug='razr-60-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'India','₹',119508,'MobileHub estimate' from public.phones where slug='razr-60-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'UAE','AED ',5066,'MobileHub estimate' from public.phones where slug='razr-60-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Japan','¥',197448,'MobileHub estimate' from public.phones where slug='razr-60-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United States','$',1099,'MobileHub estimate' from public.phones where slug='find-x8-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United Kingdom','£',934,'MobileHub estimate' from public.phones where slug='find-x8-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Eurozone','€',1077,'MobileHub estimate' from public.phones where slug='find-x8-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'India','₹',101108,'MobileHub estimate' from public.phones where slug='find-x8-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'UAE','AED ',4286,'MobileHub estimate' from public.phones where slug='find-x8-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Japan','¥',167048,'MobileHub estimate' from public.phones where slug='find-x8-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United States','$',1099,'MobileHub estimate' from public.phones where slug='x200-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United Kingdom','£',934,'MobileHub estimate' from public.phones where slug='x200-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Eurozone','€',1077,'MobileHub estimate' from public.phones where slug='x200-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'India','₹',101108,'MobileHub estimate' from public.phones where slug='x200-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'UAE','AED ',4286,'MobileHub estimate' from public.phones where slug='x200-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Japan','¥',167048,'MobileHub estimate' from public.phones where slug='x200-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United States','$',729,'MobileHub estimate' from public.phones where slug='gt-7-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United Kingdom','£',620,'MobileHub estimate' from public.phones where slug='gt-7-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Eurozone','€',714,'MobileHub estimate' from public.phones where slug='gt-7-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'India','₹',67068,'MobileHub estimate' from public.phones where slug='gt-7-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'UAE','AED ',2843,'MobileHub estimate' from public.phones where slug='gt-7-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Japan','¥',110808,'MobileHub estimate' from public.phones where slug='gt-7-pro';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United States','$',1380,'MobileHub estimate' from public.phones where slug='pura-70-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United Kingdom','£',1173,'MobileHub estimate' from public.phones where slug='pura-70-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Eurozone','€',1352,'MobileHub estimate' from public.phones where slug='pura-70-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'India','₹',126960,'MobileHub estimate' from public.phones where slug='pura-70-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'UAE','AED ',5382,'MobileHub estimate' from public.phones where slug='pura-70-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Japan','¥',209760,'MobileHub estimate' from public.phones where slug='pura-70-ultra';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United States','$',229,'MobileHub estimate' from public.phones where slug='g42-5g';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'United Kingdom','£',195,'MobileHub estimate' from public.phones where slug='g42-5g';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Eurozone','€',224,'MobileHub estimate' from public.phones where slug='g42-5g';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'India','₹',21068,'MobileHub estimate' from public.phones where slug='g42-5g';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'UAE','AED ',893,'MobileHub estimate' from public.phones where slug='g42-5g';
insert into public.phone_prices(phone_id,country,currency,price,retailer) select id,'Japan','¥',34808,'MobileHub estimate' from public.phones where slug='g42-5g';
