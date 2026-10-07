# Our Date Bank — setup (about 15 minutes)

## 1. Supabase (the shared database)
1. Create a free account at supabase.com → **New project** (pick any region, save the database password).
2. Open **SQL Editor**, paste the contents of `supabase.sql`, replace the two emails with yours and hers, click **Run**.
3. **Authentication → Providers → Email**: turn off "Confirm email" (easiest), then **Authentication → Sign In / Providers → turn OFF "Allow new users to sign up"** after you've both created your accounts (step 5).
4. **Project Settings → API**: copy the **Project URL** and the **anon public** key into `config.js`.

## 2. Vercel (hosting)
Option A (easiest): put this folder in a new GitHub repo → vercel.com → **Add New → Project** → import it → Deploy (no build settings needed).
Option B: in this folder run `npx vercel` and follow the prompts, then `npx vercel --prod`.

## 3. First sign-in
Open your Vercel URL → **Create account** with the email you put in the SQL → **Sign in**. Ask her to do the same with hers. Then tap **Add 21 starter Lagos ideas**.

## 4. Put it on both iPhones
Open the URL in **Safari** → Share button → **Add to Home Screen**. It opens full-screen like an app and updates live between you.

Notes: the anon key is safe to be public because the database only answers to the two emails in the SQL. Needs internet for the data.
