class AutoCompletePage
  include PageObject

  page_url "file://#{File.expand_path(File.dirname(__FILE__) + '/../../html/autocomplete.html')}"

  jqueryui_autocomplete(:autocomplete, :id => 'autocomplete')

  def autocomplete
    autocomplete_element
  end
end