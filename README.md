# PlateWeek
A meal planning app that lets you track what you have eaten on a week to week basis

## What it does
- User registration, login, and logout (each user only sees their own meals)
- Add, view, edit, and delete meals
- Track cost, calories, protein, carbs, and fat for each meal
- Track meal source: cooked at home, restaurant, takeout, delivery, or other
- Weekly summary with total spend, average calories, spend by source, and a macro donut chart
- Calendar sidebar to jump to any day
- Nutrition lookup using the USDA and Open Food Facts databases, by grams or estimated portions

## Spec
- **Main data:** Meal (name, date, meal type, source, cost, calories, protein, carbs, fat)
- **Pages:** login/register screen, and a main weekly tracker screen
- **Login:** required, so users can store and view their own data

Original Claude Prompt:
I want to build an app that allows you to track  the meals you are making/having in the week. It should track things like cost, nutritional value, and source of the meal (eating out, cooking at home, etc). The app should have user registration and login features (and log out) so that users can view and store their own information

Netlify link: https://plate-week.netlify.app/

Technology used: HTML, JS, Supabase, SQL, USDA API, Open Food Facts API, Netlify

Set-up:
1. Download repo from GitHub
2. Create a Supabase prohect (supabase.com)
3. Set up database by opening the SQL editor on your supabase project and running the contents of schema.sql to create meals table
4. Add API Keys (SupaBase URL, SupaBase Anon Key, USDA API key to replace demo if needed)
5. Open index.html to test
6. Deploy project folder on Netlify
7. Enjoy!

NOTE: Email confirmation page sends you no where, just return to the app after clicking link



