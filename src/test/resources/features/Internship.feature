# Author: Yurii S.
# ASK071323-310
@webdriver
  Feature: Practice with Selenium methods

@webdriver1
Scenario: Open web-page and explore it's properties
  # Given I open url "https://www.google.com"
  Given YS navigate to URL "Google"
  Then YS get page information
  Then YS maximize the window
  Then I wait for 2 sec