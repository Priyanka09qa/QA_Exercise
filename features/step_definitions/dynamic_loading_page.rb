class DynamicLoadingPage < BaseAppPage

  def example1_click
    find_element_and_click(DL_EXAMPLE_1)
    end
  
  def start_button
    find_element_and_click(DL_EXAMPLE_1_START)
  end
  
  def verify_example1_start
    verify_page_source(DL_EXAMPLE_1_TEXT)
    verify_page_source(VERIFY_START)
  end
  
  def verify_result(message)
    verify_page_source(message)
    driver.quit
  end
end