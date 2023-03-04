# Devise + Rails7 + Captcha demo

1. Git pull
2. `bundle install`
3. `bin/rails db:setup`
4. `bin/rails s`

### What to check

1. Open https://localhost:3000
2. Click 'Sign up'
3. In the sign-up form don't click on 'Captcha' checkbox.
4. Click 'Sign up' button in the form
5. Get error `undefined method 'users_url'`


### Meaninful files

- [controllers/dashboard_controller.rb](app%2Fcontrollers%2Fdashboard_controller.rb)
- [controllers/home_controller.rb](app%2Fcontrollers%2Fhome_controller.rb)
- [controllers/users/registrations_controller.rb](app%2Fcontrollers%2Fusers%2Fregistrations_controller.rb) (all logic is here)
- [views/layouts/application.html.erb](app%2Fviews%2Flayouts%2Fapplication.html.erb)
- [views/devise/registrations/new.html.erb](app%2Fviews%2Fdevise%2Fregistrations%2Fnew.html.erb)
- [config/initializers/devise.rb](config%2Finitializers%2Fdevise.rb)
- [config/routes.rb](config%2Froutes.rb)