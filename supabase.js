// Supabase public configuration. Replace these placeholders with your project values.
// Never put the service-role/secret key in this file.
export const SUPABASE_URL = 'https://YOUR_PROJECT.supabase.co';
export const SUPABASE_ANON_KEY = 'YOUR_SUPABASE_PUBLISHABLE_OR_ANON_KEY';

export const isSupabaseConfigured = () =>
  !SUPABASE_URL.includes('YOUR_PROJECT') &&
  !SUPABASE_ANON_KEY.includes('YOUR_SUPABASE');
