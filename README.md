# Our Date Bank — setup (about 15 minutes)

## 1. Supabase (the shared database)
1. Create a free account at supabase.com → **New project** (pick any region, save the database password).
2. Open **SQL Editor**, paste the contents of `supabase.sql`, replace the two emails with yours and hers, click **Run**.
3. **Authentication → Providers → Email**: turn off "Confirm email" (easiest), then **Authentication → Sign In / Providers → turn OFF "Allow new users to sign up"** after you've both created your accounts (step 5).
4. **Project Settings → API**: copy the **Project URL** and the **anon public (or Publishable)** key into `config.js`.

## 2. Vercel (hosting)
Option A (easiest): put this folder in a new GitHub repo → vercel.com → **Add New → Project** → import it → Deploy (no build settings needed).
Option B: in this folder run `npx vercel` and follow the prompts, then `npx vercel --prod`.

## 3. First sign-in
Open your Vercel URL → **Create account** with the email you put in the SQL → **Sign in**. Ask her to do the same with hers. Then tap **Add 21 starter Lagos ideas**.

## 4. Put it on both iPhones
Open the URL in **Safari** → Share button → **Add to Home Screen**. It opens full-screen like an app and updates live between you.

Notes: the anon key is safe to be public because the database only answers to the two emails in the SQL. Needs internet for the data.

---
## Extra Supabase settings for password reset (one-time)
1. **Authentication → URL Configuration**: set **Site URL** to your Vercel address (e.g. `https://datebank.vercel.app`) and add the same address under **Redirect URLs**. Without this the reset link won't open the app.
2. **Authentication → Sign In / Providers → Email**: optionally raise **Minimum password length** to 8 (the app also checks 8+ characters with a letter and a number).
3. (Optional) **Authentication → Emails**: edit the "Reset password" template wording.

## Security notes
- No password is ever stored by the app. "Saved login" keeps Supabase's own session token on the phone; turn it off in ⚙️ Settings to keep it only until the app is closed.
- Biometric login uses the phone's Face ID / fingerprint through the browser (WebAuthn). It **locks and unlocks the app on that phone**; it does not store your biometrics. Logging out removes it, and you can switch it off in Settings.
- Reset links are one-time and expire (Supabase default: 1 hour). Some email apps "pre-open" links and use them up — if a link says expired, request a new one.
- App icon: iPhone reads the icon when you tap Add to Home Screen. Choose it in ⚙️ Settings first, then remove and re-add the shortcut.
