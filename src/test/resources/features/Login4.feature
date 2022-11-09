@TRAD-866
Feature: Warning messages while logging in

  Background:
    Given The user is on the login page

  @TRAD-863
  Scenario Outline: "Invalid username or password." message functionality
    When The user tries to login with invalid "<username>" and "<password>" credentials
    Then "Invalid user name or password." message should be displayed for invalid credentials
    Examples:
      | username | password    |
      | abcdefgh | UserUser123 |
      | user1    | aad3412!    |
      | asdaw    | sdf323'+%   |

  @TRAD-864
  Scenario Outline: "Please fill out this field." message for username field
    When The user tries to login with invalid "<username>" and "<password>" credentials
    Then "Lütfen bu alanı doldurun." message should be displayed for empty username credentials
    Examples:
      | username | password    |
      |          | UserUser123 |
      |          |             |

  @TRAD-865
  Scenario Outline: "Please fill out this field." message for password field
    When The user tries to login with invalid "<username>" and "<password>" credentials
    Then "Lütfen bu alanı doldurun." message should be displayed for empty password credentials
    Examples:
      | username       | password |
      | storemanager51 |          |