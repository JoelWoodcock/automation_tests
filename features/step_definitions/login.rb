Given("I open the login page") do
  visit(ENV['URL'])
end

Given("the login page is open") do
  expect(page).to have_css('div#logo')
  expect(page).to have_css('input#login_email')
  expect(page).to have_css('input#login_password')
  expect(page).to have_css('input[value="Login"]')
end

When("I click {string}") do |string|
  click_button(string)
end

Then("I am successfully logged in") do
  expect(page).to have_css('input[value="Logout"]')
end

Then("{string} is displayed") do |string|
  expect(page).to have_content(string)
end

When("I enter {string} into the email field") do |string|
  find('input#login_email').set string
end

When("I enter {string} into the password field") do |string|
  find('input#login_password').set string
end
