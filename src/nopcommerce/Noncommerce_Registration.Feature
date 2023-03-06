Feature: Nopcommerce Registration

  As a User I want to check the Register functionality of Nopcommerce

  Background: I am on Nopcommerce Registration page
    Given  I open the google chrome browser
    When   I open the URL  https://demo.nopcommerce.com/register
    Then   I am on Nopcommerce Registration page

  Scenario: I should be able to registre with valid manadatory (*) field data on registration page
    When    I entre First name "Rohan"
    And     I entre Last Name  " Bakshi"
    And     I entre Email " Bakshi@gmail.com"
    And     I entre Password "456897"
    And     I entre Confirm Password "456897"
    And     I click on register
    Then    I was able to register Successfully

  Scenario Outline: I should not be abel to register with invalid data on mandatory field (*) of registration page

    When I entre First name "<First Name>"
    And  I entre last name "<Last Name>"
    And  I entre Email Address "<Email>"
    And  I entre Password  "<Password>"
    And  I entre Confirm Password "<Confirm Password>"
    And  Click on register button
    Then I can see an error message "<error message>"
    And  I am not able to register

    Examples:
      | First Name | Last Name | Email            | Password | Confirm Password | error message                              |
      | ""         | Bakshi    | Bakshi@gmail.com | 456897   | 456897           | Please entre first name                    |
      | Rohan      | ""        | Bakshi@gmail.com | 456897   | 456897           | Please entre last name                     |
      | Rohan      | Bakshi    | ""               | 456897   | 456897           | Please entre valid email                   |
      | Rohan      | Bakshi    | Bakshi@gmail.com | ""       | 456897           | Password is required                       |
      | Rohan      | Bakshi    | Bakshi@gmail.com | 456897   | ""               | Confirm password is required               |
      | Rohan      | Bakshi    | Bakshi@gmail.com | 456897   | 45689            | Password and confirm password do not match |
      | Rohan      | Bakshi    | Bakshi@gmail.com | 45689    | ""               | Minimum 6 Characters password is required  |
      | ""         | ""        | ""               | ""       | ""               | Mandatory (*) filed is required            |

  Scenario: I should be able to select any one radio button from gender label of your personal details section
    Given  I am on Gender label of your personal detail section
    When   I select "Male" radio button
    And    I select "Female" radio button
    Then   I am able to select any one of the radio button

  Scenario Outline: I should be select Day, Month and Year from dropdown list of Date of birth field
    Given  I am on Date of Birth filed of your personal detail section
    When   I select day "<Day>"
    And    I select "<Month>"
    And    I select "<Year>"
    Then   I am able to select Day, Month and year from dropdown list

    Examples:
      | Day | Month    | Year |
      | 11  | November | 1989 |

  Scenario:  I should be able to check and uncheck the Newsletter box on Option section
    Given   I am on Newsletter label on option section
    When    I click on Newsletter checkbox
    And     I again click on Newsletter checkbox
    Then    I was able to check and uncheck the box next to Newsletter label


