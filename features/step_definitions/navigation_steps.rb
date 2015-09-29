
Given(/^I visit the the organisations index page$/) do
  visit organisations_path
end

Given(/^I click on "(.*?)"$/) do |link|
  click_link link
end

Then(/^I should be on "(.*?)" show page$/) do |organisation|
  org_name = Organisation.find_by( name: organisation )
  visit organisation_path( org_name )
end