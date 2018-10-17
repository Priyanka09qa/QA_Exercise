class LoginPage < BaseAppPage

  def fill_credentials(username, password)
    driver.find_element(USERNAME).send_keys username
    driver.find_element(PASSWORD).send_keys password
  end

  def login
    find_element_and_click(LOGIN_SUBMIT)
  end

  def verify_logged_in
    verify_page_source(LOGIN_MESSAGE)
  end
  
  def logout
    find_element_and_click(LOGOUT_SUBMIT)
  end
  
  def verify_log_out
    expect(driver.find_element(LOGOUT_MESSAGE_ID).text.include?(LOGOUT_MESSAGE)).to be_truthy
    driver.quit
  end
end