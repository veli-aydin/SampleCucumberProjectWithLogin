@TRAD-840
Feature: Remember me checkbox functionality

  Background:
    Given The user is on the login page

  @TRAD-838
  Scenario: Remember me checkbox functionality
    When User clicks Remember Me box
    And User enters credentials and clicks login btn
    And User lands on Home Page
    And User logs out
    Then User should see own credentials