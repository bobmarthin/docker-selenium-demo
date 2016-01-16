require "selenium-webdriver"
require "rspec"

describe "Create User" do

  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "localhost:3000"
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
  end

  after(:each) do
    @driver.quit
  end

  it "check user creation" do
    @driver.get(@base_url + "/")
    @driver.find_element(:link, "New User").click
    @driver.find_element(:id, "user_name").send_keys "Maxim Guenis"
    @driver.find_element(:id, "user_email").send_keys "maximguenis@gmail.com"
    @driver.find_element(:name, "commit").click

  end

end
