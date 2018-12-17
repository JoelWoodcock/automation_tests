Given("I am logged in") do
  step "I open the login page"
  step "the login page is open"
  step "I enter the email"
  step "I enter the password"
  step "I click login"
  step "I am successfully logged in"
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
  find('input#record_email').set 'ostratulat+test@bookingbug.com'
  find('input#record_first_name').set 'oana'
  find('input#record_last_name').set 'test'
  find('input#record_consent').check

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
