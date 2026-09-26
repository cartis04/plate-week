-- Run this in Supabase: SQL Editor > New query > paste > Run

create table public.meals (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null default auth.uid() references auth.users(id) on delete cascade,
  name text not null,
  eaten_on date not null,
  meal_type text not null check (meal_type in ('breakfast','lunch','dinner','snack')),
  source text not null check (source in ('home','restaurant','takeout','delivery','other')),
  cost numeric(8,2) not null default 0,
  calories integer not null default 0,
  protein numeric(6,1) not null default 0,
  carbs numeric(6,1) not null default 0,
  fat numeric(6,1) not null default 0,
  created_at timestamptz not null default now()
);

create index meals_user_date_idx on public.meals (user_id, eaten_on);

-- Each user can only see and change their own meals
alter table public.meals enable row level security;

create policy "Users read own meals" on public.meals
  for select using (auth.uid() = user_id);
create policy "Users add own meals" on public.meals
  for insert with check (auth.uid() = user_id);
create policy "Users edit own meals" on public.meals
  for update using (auth.uid() = user_id);
create policy "Users delete own meals" on public.meals
  for delete using (auth.uid() = user_id);
