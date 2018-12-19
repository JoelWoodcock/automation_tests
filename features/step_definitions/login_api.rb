Given("I have valid credentials") do
  @payload = {
    "email": email,
    "password": password
  }
end

When("I call the login api with the valid credentials") do
  post "#{url}/api/v1/login/admin/#{company_id}" , @payload , headers
end

Then("I am logged in as an Admin") do
  expect_status(201)
  @auth_token = json_body[:auth_token]
  @adminheaders = authheaders(@auth_token)
end

def email
  ENV['EMAIL']
end

def password
  ENV['PASSWORD']
end

def url
  ENV['URL']
end

def headers
  {
    "app_id": ENV['APP_ID']
  }
end

def company_id
  ENV['COMPANY_ID']
end

def authheaders(token)
  {
    "app_id": ENV['APP_ID'],
    "auth_token": token
  }
end
