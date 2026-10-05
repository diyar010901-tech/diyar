import { createClient } from 'https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2/+esm';
import { SUPABASE_URL,SUPABASE_ANON_KEY,isSupabaseConfigured } from './supabase.js';
export const db=isSupabaseConfigured()?createClient(SUPABASE_URL,SUPABASE_ANON_KEY):null;
export const list=async(table,select='*',options={})=>{let q=db.from(table).select(select);if(options.order)q=q.order(options.order,{ascending:options.ascending??false});if(options.eq)for(const [k,v] of Object.entries(options.eq))q=q.eq(k,v);const r=await q;if(r.error)throw r.error;return r.data||[]};
export const createRow=async(table,payload)=>{const r=await db.from(table).insert(payload).select().single();if(r.error)throw r.error;return r.data};
export const updateRow=async(table,id,payload)=>{const r=await db.from(table).update(payload).eq('id',id).select().single();if(r.error)throw r.error;return r.data};
export const deleteRow=async(table,id)=>{const r=await db.from(table).delete().eq('id',id);if(r.error)throw r.error;};
