include TestConstants

Given(/^I navigate to the-internet.herokuapp$/) do
  @browser = Selenium::WebDriver.for :firefox
  @loginPage = LoginPage.new(@browser, LOGIN_URL)
end

And(/^I fill in the username with "([^"]*)" and password with "([^"]*)"$/) do |username, password|
  @loginPage.fill_credentials(username, password)
end

When(/^I tap the log in button$/) do
  @loginPage.login
end    

Then(/^I should be logged in$/) do
  @loginPage.verify_logged_in
end

When(/^I tap the logout button$/) do
 @loginPage.logout
end

Then(/^I should be logged out$/) do
 @loginPage.verify_log_out
end

Given(/^I navigate to dynamic_loading page$/) do
  @browser = Selenium::WebDriver.for :firefox
  @dynamicPage = DynamicLoadingPage.new(@browser, DL_URL)
end

When(/^I tap the Example 1: Element on page that is hidden button$/) do
  @dynamicPage.example1_click
end

Then(/^I should see start button on Example 1 page$/) do
  @dynamicPage.verify_example1_start
end

When(/^I tap on start button$/) do
  @dynamicPage.start_button
end

Then(/^I should see "([^"]*)" message$/) do |message|
  @dynamicPage.verify_result(message)
end