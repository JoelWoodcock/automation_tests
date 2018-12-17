Given("I open the login page") do
  visit('https://donkeykong.bookingbug.com/login')
end

Given("the login page is open") do
  expect(page).to have_css('div#logo')
  expect(page).to have_css('input#login_email')
  expect(page).to have_css('input#login_password')
  expect(page).to have_css('input[value="Login"]')
end

When("I enter the email") do
  find('input#login_email').set 'ostratulat+test000@bookingbug.com'
end

When("I enter the password") do
  find('input#login_password').set 'Booking321'
end

When("I click login") do
  click_button('Login')
end

Then("I am successfully logged in") do
  expect(page).to have_css('input[value="Logout"]')
end

When("I enter a wrong email") do
  find('input#login_email').set 'ostratulat_test001@bookingbug.com'
end

When("I enter a wrong password") do
  find('input#login_password').set 'Booking123'
end

Then("I am not logged in") do
  expect(page).to have_content('Failed to log in, please try again')
end

When("I enter an invalid email") do
  find('input#login_email').set 'ostratulat+test001@bookingbug.com'
end

When("I enter a valid password") do
  find('input#login_password').set 'Booking321'
end

When("I enter a valid email") do
  find('input#login_email').set 'ostratulat+test000@bookingbug.com'
end

When("I enter an invalid password") do
  find('input#login_password').set 'Booking123'
end
