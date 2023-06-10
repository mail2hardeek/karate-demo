Feature: To demonstrate the UI Automation using Karate

  Background: Configure Driver
    Given driver 'https://demo.nopcommerce.com/'

    Scenario: Verify the tittle of the page
      Then match driver.title == 'https://demo.nopcommerce.com/'

      Scenario: Verify the user navigate to login page
        When click ("//a[contains(text(),'Log in')]") //xpath
        * def actualText = text("//h1[contains(text(),'Welcome, Please Sign In!')]")
        Then match actualText == "Welcome, please Sign In"
        And input('#password', "prime123")