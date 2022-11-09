@TRAD-868
Feature: Users can not login with invalid credentials

  Background:
    Given The user is on the login page


#  Scenario Outline: Login as a <userType>
 #   When The user logs in as a "<userType>"
  #  Then The user is on the "<pageSubTitle>" page
   # Examples:
    #  | userType      | pageSubTitle    |
     # | Driver        | Quick Launchpad |
      #| Sales Manager | Dashboard       |
      #| Store Manager | Dashboard       |

  @TRAD-867
  Scenario Outline: Users can not login with invalid credentials
    When The user tries to login with "<username>" and "<password>"
    Then The user can not login and page title is "Login"
    Examples:
      | username        | password    |
      | salesmanager101 |             |
      |                 | UserUser123 |
      |                 |             |
      | abcdefgh        | UserUser123 |
      | storemanager51  | aad3412!    |
      | asdaw           | sdf323'+%   |