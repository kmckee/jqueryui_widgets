Given(/^I am on the AutoComplete page$/) do
  visit AutoCompletePage
end

When(/^I enter "([^"]*)" in the AutoComplete element$/) do |text|
  on(AutoCompletePage).autocomplete.value = text
end

Then(/^I should see the following suggestions:$/) do |expected_suggestions|
  on(AutoCompletePage) do |page|
    expected_suggestions.hashes.each do |expected|
      page.autocomplete.suggestions.should include expected['suggestion']
    end
  end
end

Then(/^I should not see the following suggestions:$/) do |expected_to_not_be_suggested|
  on(AutoCompletePage) do |page|
    expected_to_not_be_suggested.hashes.each do |not_suggested|
      page.autocomplete.suggestions.should_not include not_suggested['suggestion']
    end
  end
end