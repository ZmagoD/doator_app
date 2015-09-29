Given(/^the folowing organisations exist:$/) do |table|
  table.hashes.each do |org|
    Organisation.create! org
  end
end


Then(/^I should see "(.*?)"$/) do |name|
  expect(page).to have_css('h2.organisation-title', :text => name )
end