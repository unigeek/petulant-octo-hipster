#see https://gist.github.com/castilhor/3183926
#gem install capybara
#gem install poltergeist
#sudo apt-get install fontconfig
#sudo apt-get install freetype*
#installed PhantomJS 1.9.7 per https://coderwall.com/p/rs63ea
#basically, this:
# cd /usr/local/share
# sudo wget <web address of phantomjs tar.bz2>
# sudo tar xjf <phantomjs tar.bz2>
# sudo ln -s /usr/local/share/phantomjs-1.9.7-linux-i686/bin/phantomjs /usr/local/share/phantomjs
# sudo ln -s /usr/local/share/phantomjs-1.9.7-linux-i686/bin/phantomjs /usr/local/bin/phantomjs
# sudo ln -s /usr/local/share/phantomjs-1.9.7-linux-i686/bin/phantomjs /usr/bin/phantomjs

require 'capybara/poltergeist'
require 'capybara/rspec'

Capybara.default_driver = :poltergeist
Capybara.run_server = false
Capybara.app_host = 'http://www.google.com'

describe "some feature", :type => :feature do
  before :each do
    #setup prior to each test goes here
  end

  #each test case begins with "it"..
  it "googles for asheville" do
    visit '/'
    fill_in 'q', :with => 'asheville'
    click_button 'Google Search'
    expect(page).to have_content 'Asheville, NC'
    page.driver.render "capture.png"
  end
end
