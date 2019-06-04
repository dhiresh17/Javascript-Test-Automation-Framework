Feature: Check Screener website

Scenario: Check Login Functionality of Screener website
    Given I open the url "https://www.screener.in/"
    When I click on the element "*=Login"
    And I set "dhiresh_mundada@yahoo.co.in" to the inputfield "input[name=username]"
    And I set "9096965011" to the inputfield "input[name=password]"
    And I click on the button "button[type=submit]"
    Then I expect that element "//li[contains(text(),'Please enter a correct email and password. Note th')]" matches the text "Please enter a correct email and password. Note that both fields may be case-sensitive."
 