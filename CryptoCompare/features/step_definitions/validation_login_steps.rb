require 'selenium-webdriver'

#Background
Given("I am on the login form") do
  #Preconditions 
  wait.until { driver.find_element(:class, 'heading')}
  LoginButton = driver.find_element(:css, 'ul.nav:nth-child(4)')
  LoginButton.click
end



Given("I leave the email field blank and enter a valid password") do
  wait.until { driver.find_element(:name, 'password')}
  Password = driver.find_element(:name, 'password')
  Password.click
  Password.send_keys 'Temp0rary'
end

Then("I should get an error message for the missing email") do
  SubmitButton = driver.find_element(:css, '.btn-login')
  SubmitButton.click
  wait.until { driver.find_element(:css, 'body > div.modal.fade.ng-isolate-scope.in > div > div > div.modal-body.modal-body-login.ng-scope > div > form.clearfix.ng-valid-email.ng-invalid.ng-invalid-required.ng-valid-maxlength.ng-dirty.ng-valid-parse.ng-valid-minlength.ng-submitted > div.alert.ng-scope.ng-isolate-scope.alert-danger.alert-dismissible')}
end



Given("I enter a valid email and leave the password field blank") do
  wait.until { driver.find_element(:name, 'email')}
  Email = driver.find_element(:name, 'email')
  Email.click
  Email.send_keys 'hatim.v@hotmail.co.uk'
end

Then("I should get an error message for the missing password") do
  SubmitButton = driver.find_element(:css, '.btn-login')
  SubmitButton.click
  wait.until { driver.find_element(:css, 'body > div.modal.fade.ng-isolate-scope.in > div > div > div.modal-body.modal-body-login.ng-scope > div > form.clearfix.ng-invalid.ng-invalid-required.ng-valid-minlength.ng-valid-maxlength.ng-dirty.ng-valid-email.ng-submitted > div.alert.ng-scope.ng-isolate-scope.alert-danger.alert-dismissible')}
end



Given("I have entered an invalid email") do
  wait.until { driver.find_element(:name, 'email')}
  Email = driver.find_element(:name, 'email')
  Email.click
  Email.send_keys 'invalid@email.com!'
end

And("I have entered a valid password") do
  Password = driver.find_element(:name, 'password')
  Password.click
  Password.send_keys 'Temp0rary'
end

Then("I should see an error message regarding the invalid email") do
  SubmitButton = driver.find_element(:css, '.btn-login')
  SubmitButton.click
  wait.until { driver.find_element(:css, 'body > div.modal.fade.ng-isolate-scope.in > div > div > div.modal-body.modal-body-login.ng-scope > div > form.clearfix.ng-invalid.ng-valid-maxlength.ng-dirty.ng-invalid-email.ng-valid-parse.ng-valid-required.ng-valid-minlength.ng-submitted > div.alert.ng-scope.ng-isolate-scope.alert-danger.alert-dismissible')}
end



Given("I have entered a valid email") do
  wait.until { driver.find_element(:name, 'email')}
  Email = driver.find_element(:name, 'email')
  Email.click
  Email.send_keys 'hatim.v@hotmail.co.uk'
end

And("I have entered an invalid password") do
  Password = driver.find_element(:name, 'password')
  Password.click
  Password.send_keys 'skjhgsdrffkghi'
end

Then("I should see an error message regarding the invalid password") do
  SubmitButton = driver.find_element(:css, '.btn-login')
  SubmitButton.click
  wait.until { driver.find_element(:css, 'body > div.modal.fade.ng-isolate-scope.in > div > div > div.modal-body.modal-body-login.ng-scope > div > form.clearfix.ng-valid-maxlength.ng-dirty.ng-valid-email.ng-valid-parse.ng-valid-required.ng-valid.ng-valid-minlength.ng-submitted > div.alert.ng-scope.ng-isolate-scope.alert-danger.alert-dismissible')}
end

