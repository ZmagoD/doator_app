Feature: Organisation
  As a ogranisation
  To increase my web visibility
  And enable people to see what I collect and where
  
  Background: ogranisations has been added to database
    Given the folowing organisations exist:
      | name | address | description |
      | org1 | ulica 23.maja 1, Nova Gorica | Organizacija je nastala leta 2011 na pobudo .... |
      | org2 | Cankarjeva ul. 5, Ljubljana | Organizacije zbira stare obleke ... |
    
    And I visit the the organisations index page

  Scenario: I am able to see all the organisations listed
    Then I should see "org1" 
    And I should see "org2"
    
  Scenario: I am able to click the organisation name and see the organisation needs
    And I click on "org1"
    Then I should be on "org1" show page