Given("I am logged in") do
  step 'I open the login page'
  step 'the login page is open'
  step 'I enter "qa+automation@bookingbug.com" into the email field'
  step 'I enter "Automation123" into the password field'
  step 'I click "Login"'
  step 'I am successfully logged in'
end

Given("I am on the calendar page") do
  expect(page).to have_css('a', text: 'Calendar')
end

Given("I click the Widget link") do
  find('a', text: 'Widget').click
  expect(page).to have_css('a', text: "Open in New Window")
  visit(find_link('Open in New Window')[:href])
end

Given("choose the next available time") do
  expect(page).to have_css('span#week1')
  find('div.en', match: :first).click
  expect(page).to have_css('div.select_one')
  checkout_link = find_link('1 hour')[:href]
  visit(checkout_link)
end

Given("fill in the New Customer fields") do
  expect(page).to have_css('a', text: 'New Customer')
  newmember = member
  find('input#record_email').set newmember[:email]
  find('input#record_first_name').set newmember[:first_name]
  find('input#record_last_name').set newmember[:last_name]
  find('input#record_consent').check
end

  def member
    {
    "email": Faker::Internet.email,
    "first_name": Faker::Name.first_name,
    "last_name": Faker::Name.last_name
    }
end

Given("I click Next button") do
  find('input[value="Next"]').click
end

Given("I click Confirm button") do
  expect(page).to have_css('a', text: 'Back')
  find('input[value="Confirm"]').click
end

Then("the booking should be created") do
    expect(page).to have_content('Admin booking confirmed')
end
