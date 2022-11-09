@TRAD-860
Feature: Forgot password menu

  Background:
    Given The user is on the login page

  @TRAD-858
  Scenario: Forgot your password link functionality
    When The user clicks on the "Forgot Your Password"
    Then User lands on the "Forgot Password" page

  @TRAD-859
  Scenario: Changing password with username
    When The user clicks on the "Forgot Your Password"
    And The user enters own username
    And The user clicks Request Btn
    Then The user should not see the "Unable to send the email." message