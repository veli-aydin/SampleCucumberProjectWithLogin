@TRAD-862
Feature: User should see password in bullet sign

  Background:
    Given The user is on the login page

  @TRAD-861
  Scenario Outline: User should see password in bullet sign
    When Users enter their "<password>"
    Then User should see their password in bullet sign
    Examples:
      | password    |
      | UserUser123 |