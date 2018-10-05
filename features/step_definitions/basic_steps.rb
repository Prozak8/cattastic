Given("I am on the landing page") do
    visit root_path
end

Then ("show me the page") do
    save_and_open_page
end

When("I click {string}") do |category_name|
    click_on category_name
end

When("I fill in {string} with {string}") do |field, data|
    fill_in field, with: data
end

Given("the facebook authentication is not granted") do
    OmniAuth.config.mock_auth[:facebook] = :invalid_credentials
end