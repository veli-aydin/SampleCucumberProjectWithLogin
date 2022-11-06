@wip
Feature: Login 2a-2b - Warning Messages While logging in

  Background:
    Given The user is on the login page


  Scenario Outline: The user can not login with invalid credentials
    When The user tries to login with invalid "<username>" and "<password>" credentials
    Then "Invalid user name or password." message should be displayed for invalid credentials
    Examples:
      | username | password    |
      | abcdefgh | UserUser123 |
      | user1    | aad3412!    |
      | asdaw    | sdf323'+%   |


  Scenario Outline: The user try to login with empty field

    When The user tries to login with invalid "<username>" and "<password>" credentials
    Then "Lütfen bu alanı doldurun." message should be displayed for empty username credentials
    Examples:
      | username       | password    |
      |                | UserUser123 |
      |                |             |

  Scenario Outline: The user try to login with empty field

    When The user tries to login with invalid "<username>" and "<password>" credentials
    Then "Lütfen bu alanı doldurun." message should be displayed for empty password credentials
    Examples:
      | username       | password    |
      | storemanager51 |             |


