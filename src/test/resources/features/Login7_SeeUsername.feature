@TRAD-809
Feature: User should see username on profile menu

  Background:
    Given The user is on the login page

@TRAD-808
  Scenario Outline: User should see username on profile menu
    When The user tries to login with "<username>" and "<password>"
    Then User can see his own "<username>" in the profile menu after login

    Examples:
      | username        | password    |
      | user1           | UserUser123 |
      | salesmanager101 | UserUser123 |
      | storemanager51  | UserUser123 |