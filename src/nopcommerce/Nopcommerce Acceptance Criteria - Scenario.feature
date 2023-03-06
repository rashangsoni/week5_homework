Feature: Demo Nopcommerce's Top Menu acceptance criteria

  As a user, I would like to check acceptance criteria of Nopcommerce Top Menu

  Background: User is on given URL
    When User Type URL https://demo.nopcommerce.com/register
    And  User click on entre button
    Then User is on given URL

  Scenario: Verify that user can navigate to books category
    When User is on given URL
    And  Click on books tab on Top Menu
    Then User is navigated to book category page

  Scenario: Verify that user cans ee the books category page filters and list of products
    When User is on given URL
    And  Click on books tab on Top Menu
    And  Check filters and list tab
    Then Books category page is displayed with filters and list tabs

  Scenario: Verify that user can see 'Sort by' filer on book category page
    Given User is on book category page
    When  User is on book Category page
    And   Check ' Sort by ' filter is present
    Then  ' Sort by ' filter is available on book category page

  Scenario: Verify that user can see ' Display ' filter on book category page
    Given User is on book category page
    When  User is on book category page
    And   Check ' Display ' filter is present
    Then  ' Display ' filter is available on book category page

  Scenario: Verify that user can see ' Grid ' tab on book category page
    Given User is on book category page
    When  User is on book category page
    And   Check ' Grid ' tab is present
    Then  ' Grid ' tab is available on book category page

  Scenario: Verify that user can see ' List ' tab on book category page
    Given User is on book category page
    When  user is on book category page
    And   Check ' List ' is present
    Then  ' List ' tab is available on book category page

  Scenario: Verify that user can see ' Name: A to Z '  selection is present in 'Sort by ' filter
    Given User is on book category page
    When  User is on book category page
    And   Click on ' Sort by ' filter
    And   Check that ' Name: A to Z ' selection is present
    Then  ' Name: A to Z ' selection is present in ' sort by ' filter

  Scenario: Verify that user can see ' Name A to Z ' is first option in ' Sort by' filter
    Given User is on book category page
    When  User is on book category page
    And   Click on ' Sort by ' filter
    And   Check that ' Name: A to Z ' is first in order
    Then  ' Name: A to Z ' is first option in order

  Scenario: Verify that user can see ' Name: A to Z ' filter is functioning as expected ( Note: Products are filtered in alphabetical order)
    Given User is on book category page
    When  User is on book category page
    And   Click on ' Sort by ' filter
    And   Select ' Name: A to Z ' filter
    Then  All products are displayed in alphabetical order










