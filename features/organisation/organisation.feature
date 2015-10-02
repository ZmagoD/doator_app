Feature: Organisation
  As a ogranisation
  To increase my web visibility
  And enable people to see what I collect and where
  
  Background: ogranisations has been added to database
    Given the folowing organisations exist:
      | name | address | description | email | zip | city | phone | website | password | password_confirmation |
      | org1 | ulica 23.maja 1 | Organizacija je nastala leta 2011 na pobudo .... | org1@gmail.com | 5000 | Nova Gorica | 05123456789 | www.org1.com | asdf1234 | asdf1234 |
      | org2 | Cankarjeva ul. 5 | Organizacije zbira stare obleke ... | org2@gmail.com | 1000 | Ljubljana | 01123456789 | www.org2.com | asdf1234 | asdf1234 |
    
    And I visit the the organisations index page

  Scenario: I am able to click the organisation name and see the organisation needs
    And I click on "org1"
    Then I should be on "org1" show page