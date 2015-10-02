Feature: Colectionloc
  As a organisation 
  And loged in 
  I can add the locations of my collection centers
  And I can edit and delete it 
  
   
  Background: ogranisations has been added to database
    Given the folowing organisations exist:
      | name | address | description | email | zip | city | phone | website | password | password_confirmation |
      | org1 | ulica 23.maja 1 | Organizacija je nastala leta 2011 na pobudo .... | org1@gmail.com | 5000 | Nova Gorica | 05123456789 | www.org1.com | asdf1234 | asdf1234 |
    
    And is sing in
    And I am on the show page
    
  Scenario: I should see the link to the location submission page
    Then I click on link "Dodaj zbirno lokacijo"
  
  Scenario: I should be able to create a new location submission
    And I should fill in the new collection loc form with "zbirni konteiner" "objačila" "Konteiner se nahaja na vhodu v parkirišče.."
    And click button "Dodaj lokacijo"