@predefined
Feature: Smoke steps

  @GiveWater
  Scenario: Automating search engine GiveWater
    Given I open url "https://www.givewater.com"
    Then I should see page title contains "giveWater"
    Then I wait for element with xpath "//img[@loading='lazy']" to be present
    And I click on element using JavaScript with xpath "//button[@class='pum-close popmake-close']"
    Then element with xpath "//input[@id='site-search']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='site-search']"
    Then I click on element using JavaScript with xpath "//button[@id='button-addon2']"
    Then I wait for element with xpath "//*[text()='Web Results']" to be present
    Then element with xpath "//div[@class='mainline-results mainline-results__web']" should contain text "Behavior Driven Development"

    @Encrypt
    Scenario: Automating search engine Search Encrypt
      Given I open url "https://www.searchencrypt.com/home"
      Then I should see page title contains "Search Encrypt"
      Then element with xpath "//input[@type='text']" should be present
      When I type "Behavior Driven Development" into element with xpath "//input[@type='text']"
      Then I click on element using JavaScript with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//div[@id='app']" to be present
      Then I wait for 2 sec
      Then element with xpath "//div[@id='app']" should contain text "Behavior Driven Development"

      @Swisscows
      Scenario: Automating search engine Swisscows
        Given I open url "https://swisscows.com/en"
        Then I should see page title contains "Swisscows"
        Then element with xpath "//input[@type='search']" should be present
        When I type "Behavior Driven Development" into element with xpath "//input[@type='search']"
        Then I click on element using JavaScript with xpath "//button[@type='submit']"
        Then I wait for element with xpath "//*[contains(@class, 'results')]" to be present
        Then I wait for 2 sec
        Then element with xpath "//*[contains(@class, 'results')]" should contain text "Behavior Driven Development"

        @Duckduckgo
        Scenario: Automating search engine Duckduckgo
          Given I open url "https://duckduckgo.com/"
          Then I should see page title contains "DuckDuckGo"
          Then element with xpath "//input[@id='searchbox_input']" should be present
          When I type "Behavior Driven Development" into element with xpath "//input[@id='searchbox_input']"
          Then I click on element using JavaScript with xpath "//button[@aria-label='Search']"
          Then I wait for element with xpath "//ol[@class='react-results--main']" to be present
          Then I wait for 2 sec
          Then element with xpath "//ol[@class='react-results--main']" should contain text "Behavior Driven Development"

          @Startpage
          Scenario: Automating search engine Startpage
            Given I open url "https://www.startpage.com/"
            Then I should see page title contains "Startpage"
            Then element with xpath "//input[@id='q']" should be present
            When I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
            Then I click on element using JavaScript with xpath "//button[@id='search-btn']"
            Then I wait for element with xpath "//div[@id='main']" to be present
            Then I wait for 2 sec
            Then element with xpath "//div[@id='main']" should contain text "Behavior Driven Development"

            @Wiki
            Scenario: Automating search engine Wiki
              Given I open url "https://www.wiki.com/"
              Then I should see page title contains "Wiki"
              Then element with xpath "//input[@name='q']" should be present
              When I type "IT" into element with xpath "//input[@name='q']"
              Then I click on element using JavaScript with xpath "//input[@type='submit']"
              Then I wait for element with xpath "//div[@id='main-content']" to be present
              Then I click on element using JavaScript with xpath "//button[@id='proceed-button']"
              Then I switch to iframe with xpath "//iframe[@name='googleSearchFrame']"
              Then element with xpath "//div[@class='gsc-results gsc-webResult']" should contain text "IT"


              @Ecosia
              Scenario: Automating search engine Ecosia
              Given I open url "https://www.ecosia.org/"
              Then I should see page title contains "Ecosia"
              Then element with xpath "//*[contains(@placeholder, 'Search')]" should be present
              When I type "Engineer" into element with xpath "//*[contains(@placeholder, 'Search')]"
              Then I click on element using JavaScript with xpath "//button[@type='submit']"
              Then I wait for element with xpath "//section[@class='mainline web__mainline']" to be present
              Then element with xpath "//section[@class='mainline web__mainline']" should contain text "Engineer"

                @Ekoru
                Scenario: Automating search engine for Ekoru
                  Given I open url "https://ekoru.org/"
                  Then I should see page title contains "Ekoru"
                  Then element with xpath "//input[@id='fld_q']" should be present
                  When I type "Engineer" into element with xpath "//input[@id='fld_q']"
                  Then I click on element using JavaScript with xpath "//div[@id='btn_search']"
                  Then I wait for element with xpath "//div[@id='div_results']" to be present
                  Then I wait for 2 sec
                  Then element with xpath "//div[@id='div_results']" should contain text "Engineer"


