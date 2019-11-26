require 'selenium-webdriver'

Selenium::WebDriver::Chrome.driver_path = `which chromedriver-helper`.chomp # 설치한 크롬 드라이버 사용
options = Selenium::WebDriver::Chrome::Options.new # 크롬 헤드리스 모드 위해 옵션 설정
options.add_argument('--disable-gpu') # 크롬 헤드리스 모드 사용 위해 disable-gpu setting
options.add_argument('--headless') # 크롬 헤드리스 모드 사용 위해 headless setting
@browser = Selenium::WebDriver.for :chrome, options: options # 실레니움 + 크롬 + 헤드리스 옵션으로 브라우저 실행

insta_url = "https://www.instagram.com/jong1no/"

@browser.get insta_url

title_xpath = "/html/body/span/section/main/div/header/section/div[1]/h1"

title = @browser.find_element(xpath: title_xpath).text

posts_xpath = "/html/body/span/section/main/div/header/section/ul/li[1]/a/span"

posts = @browser.find_element(xpath: posts_xpath).text

followers_xpath = "/html/body/span/section/main/div/header/section/ul/li[2]/a/span"

followers = @browser.find_element(xpath: followers_xpath).text

follows_xpath = "/html/body/span/section/main/div/header/section/ul/li[3]/a/span"

follows = @browser.find_element(xpath: follows_xpath).text

puts "title: #{title}, posts: #{posts}, followers: #{followers}, follows: #{follows}"

@browser.quit