
Feature: Login Paypal

  Scenario Outline: Login to paypal website wrong password
     Given I am on paypal website
     When  I enter <username> and <password>

      Then I validate the heading shows as "Send money to friends and family."
      Then I should validate the link for favorite shops is "http://www.paypal.com/us/webapps/mpp/about-paypal-product"
      #And I Should see the image of paypal sites accepting in new york
      #Then  I Should see the error message page


    Examples:
      | username                  | password |
      | rabbi 723111111@yahoo.com | tttttttt |
      | user2                     | pass2    |

    Scenario outline: Login to paypal website wrong password
    Given I am on paypal website
    When I enter <username> and <password>

    And I click the Login button
    And I click setting button
    And I  click the address plus button
    And I select the Iowa state from the dropdown list
    And I make the address primary by selecting the chkbox

    Examples:
    |username|                         |password|
    |mnmnnnmnmn |                       |233233222|


    Scenario Outline: Login to paypal website wrong password
      Given I am on paypal website
      When I enter <username> and <password>
      And I click the Login button
      And I click setting button
      And I click the upgrade to a business account link
      And I select the existing account radio button

      Examples:
      |username|                      |Password|
     | mmmmmm|                          |211144452121|
