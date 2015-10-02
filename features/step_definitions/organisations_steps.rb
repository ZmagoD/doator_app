Given(/^the folowing organisations exist:$/) do |table|
  table.hashes.each do |org|
    Organisation.create! org
  end
end

Given(/^is sing in$/) do 
  visit '/organisations/sign_in'
  fill_in "Email", :with => "org1@gmail.com"
  fill_in "Geslo", :with => "asdf1234"
  click_button "Prijava"
end

Given(/^I am on the show page$/) do 
  click_link "Moj Profil"
end

Then(/^I click on link "(.*?)"$/) do |link|
  click_link link
end

Then(/^I should fill in the new collection loc form with "(.*?)" "(.*?)" "(.*?)"$/) do |type, goods, description|
  fill_in "Način zbiranja", :with => type
  fill_in "Predemet zbiranja", :with => goods
  fill_in "Opis zbirnega mesta", :with => description
end

Given(/^click button "(.*?)"$/) do |button|
  click_button button
end
