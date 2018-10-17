class BaseAppPage
  include RSpec::Matchers
  include TestConstants

  attr_reader :driver
  def initialize(driver, navigate_url)
    @driver = driver
    @driver.get(navigate_url)
  end

  def find_element_and_click(element)
    driver.find_element(element).click
  end

  def verify_page_source(text)
    expect(driver.page_source.include?(text)).to be_truthy
  end
end