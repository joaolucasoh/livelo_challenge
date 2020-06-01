# frozen_string_literal: true

Given('that you perform the initial tutorial') do
  @screen.tutorial.start_tutorial
end

When('to start registration') do
  @screen.register.register_screen?
end

Then('I should see the fields email, phone number, password') do
  @screen.register.fields?
  @screen.register.happy_register
end

Then('then send the token correto') do
  @screen.register.send_token
end

Then('I should see the {string} and the {string} section') do |categories, popular|
  @screen.register.categories_page?(categories, popular)
end
