require_relative "Base"
class Paypal_site < Base
  set_url ""
  set_url_matcher /www\.paypal(.*?)\.com /

  element :login_button, "#ul-btn"

  cucumber element :login_button,"a",:text => "Log in"
  #By CSS

 # element :userid, "input#email"# By id
#element :userid, "input.ValidateEmpty" #By Class
  # element :userid,"input"# By Tag
  # element :userid,"input [placeholder='Email or mobile number']"
  element :next_button, "#btnNext"# By id
   element :password, "#password"# By id



end