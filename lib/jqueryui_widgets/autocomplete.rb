
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
    self.parent.unordered_list_element(:xpath => 'following-sibling::*').list_item_elements.collect { |li| li.text }
  end
end