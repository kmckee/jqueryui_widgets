
#
# AutoComplete class to make use of the AutoComplete widget.
#
# NOTE: Since JQueryUI Widgets are completely customizable,
# we've kept the AutoComplete class limited to basic functionality
# so that end users can pick up the gem and customize it to
# suit their own needs.
#
class JQueryUIWidgets::AutoComplete < PageObject::Elements::TextField
  def suggestions
    wait_for_suggestions
    suggestions_container.list_item_elements.collect { |li| li.text }
  end

  def suggestions_container
    self.parent.unordered_list_element(:xpath => 'following-sibling::*')
  end

  private

  def wait_for_suggestions
    wait_until(1, "Suggestions not visible within one second") do
      suggestions_container.list_item_elements.length > 0
    end
  end
end