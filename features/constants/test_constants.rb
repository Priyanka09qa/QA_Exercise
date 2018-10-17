module TestConstants
  USERNAME        = { id: 'username'     }
  PASSWORD        = { id: 'password'     }
  LOGIN_SUBMIT = { xpath: '//*[@id="login"]/button'}
  LOGOUT_SUBMIT = {  xpath: '//a[@href="/logout"]'}
  LOGIN_URL = 'http://the-internet.herokuapp.com/login'
  LOGIN_MESSAGE = 'Secure Area'
  LOGOUT_MESSAGE_ID = { xpath: '//*[@id="flash"]'}
  LOGOUT_MESSAGE = 'You logged out of the secure area!'

  DL_URL = 'http://the-internet.herokuapp.com/dynamic_loading'
  DL_EXAMPLE_1 = { xpath: '//a[contains(@href,"/dynamic_loading/1")]'}
  DL_EXAMPLE_1_START = { xpath: '//*[@id="start"]/button'}
  DL_EXAMPLE_1_TEXT = 'Example 1: Element on page that is hidden'
  VERIFY_START = 'Start'
end