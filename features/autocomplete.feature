Feature: Using the AutoComplete Widget

  This feature will test using the AutoComplete widget.

  Background:
    Given I am on the AutoComplete page

  Scenario: Getting type-ahead suggestions from the autocomplete element
    When I enter "J" in the AutoComplete element
    Then I should see the following suggestions:
      | suggestion    |
      | Clojure       |
      | Java          |
      | JavaScript    |
    When I enter "Ja" in the AutoComplete element
    Then I should see the following suggestions:
      | suggestion    |
      | Java          |
      | JavaScript    |
    But I should not see the following suggestions:
      | suggestion    |
      | Clojure        |