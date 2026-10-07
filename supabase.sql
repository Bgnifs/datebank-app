-- Run this once in Supabase → SQL Editor. Replace the two emails first!
create table if not exists dates (
  id text primary key,
  data jsonb not null,
  updated_at timestamptz default now()
);
alter table dates enable row level security;
create policy "just the two of us" on dates for all to authenticated
  using      ((auth.jwt() ->> 'email') in ('YOU@EXAMPLE.COM','HER@EXAMPLE.COM'))
  with check ((auth.jwt() ->> 'email') in ('YOU@EXAMPLE.COM','HER@EXAMPLE.COM'));
alter publication supabase_realtime add table dates;
