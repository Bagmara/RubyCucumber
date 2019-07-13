
Given(/^I am on paypal website$/) do

  $Browser.paypal_home_pg.load

  $Browser.paypal_home_pg.login_button.click

end

When (/^I enter (.*?)and (.*?)$/) do|user,password|

  $Browser.paypal_home_pg.userid.set (user)
  $Browser.paypal_home_pg.next_button.click
  $Browser.paypal_home_pg.password.set(password)

end
Then( /^I validet the heading shows as "(.*?)"$/) do|heading|

expect ($Browser.paypal_home_pg.note.text).to eql |heading|
end

Then (/^I should see the note as "(.*?)"$/) do |heading|
  expect($Browser.paypal_home_pg.note.text).to eql (heading)
end
Then (/^ I should validate the link for favorite shops as "(.*?)"$/) do |heading|

end