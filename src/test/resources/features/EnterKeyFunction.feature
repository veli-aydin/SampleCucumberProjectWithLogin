@TRAD-845
Feature: Login-6 Enter Key Function

  Background:
    Given The user is on the login page

  @TRAD-843
  Scenario:Verification of Enter Key Functionality
    When User enters username credential
    And User enters password credential
    Then User should land on the Home Page