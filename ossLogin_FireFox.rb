require 'test/unit'

require 'rubygems'
require 'logger'
require 'net/smtp'
require "watir-webdriver"
require 'selenium/server'


server = Selenium::Server.new("C:/softwares/Jars/selenium-server-standalone-2.28.0.jar" ,:background => true)
server.start
module OssLogin
def chklog(n)

br = Watir::Browser.new(:remote, :url => "http://192.168.193.241:4444/wd/hub",:desired_capabilities => :firefox)

 #br = Watir::Browser.new :firefox
br.goto("https://admin.enduranceoss.com/oss/engineering.html/")

#br.execute_script("window.open('http://yahoo.com','_newtab')")
if br.text.include? "Log Out"
br.goto(n)
br.link(:class, "cta get-started").click
else
br.text_field(:name,"oss_UserName").set('QAENG1')
br.text_field(:name, "oss_Password").set("Testdr20131!")
br.button(:name, "oss_Login").click
sleep 2

br.goto(n)
return br
end
end

def logout(r)
br.goto("https://admin.enduranceoss.com/oss/engineering.html/")
br.link(:href, "/cs/oss_logout.html").click
#Close the browser
br.close
#Close the workbook
r.close
end

end

module OssLogin1
def chklog1(n)

br = Watir::Browser.new(:remote, :url => "http://192.168.193.231:4444/wd/hub",:desired_capabilities => :firefox)

 #br = Watir::Browser.new :firefox
br.goto("https://admin.enduranceoss.com/oss/engineering.html/")

#br.execute_script("window.open('http://yahoo.com','_newtab')")
if br.text.include? "Log Out"
br.goto(n)
br.link(:class, "cta get-started").click
else
br.text_field(:name,"oss_UserName").set('QAENG1')
br.text_field(:name, "oss_Password").set("Testdr20131!")
br.button(:name, "oss_Login").click
sleep 2

br.goto(n)
return br
end
end

def logout(r)
br.goto("https://admin.enduranceoss.com/oss/engineering.html/")
br.link(:href, "/cs/oss_logout.html").click
#Close the browser
br.close
#Close the workbook
r.close
end

end


module OssLogin2
def chklog2(n)

br = Watir::Browser.new(:remote, :url => "http://192.168.193.230:4444/wd/hub",:desired_capabilities => :firefox)

 #br = Watir::Browser.new :firefox
br.goto("https://admin.enduranceoss.com/oss/engineering.html/")

#br.execute_script("window.open('http://yahoo.com','_newtab')")
if br.text.include? "Log Out"
br.goto(n)
br.link(:class, "cta get-started").click
else
br.text_field(:name,"oss_UserName").set('QAENG1')
br.text_field(:name, "oss_Password").set("Testdr20131!")
br.button(:name, "oss_Login").click
sleep 2

br.goto(n)
return br
end
end

def logout(r)
br.goto("https://admin.enduranceoss.com/oss/engineering.html/")
br.link(:href, "/cs/oss_logout.html").click
#Close the browser
br.close
#Close the workbook
r.close
end

end
#server.stop