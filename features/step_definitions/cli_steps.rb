Given /^the application is running$/ do
  run(unescape("ruby chatbot.rb"))
end

Then /^I should see "([^""]*)"$/ do |arg1|
  assert_partial_output(arg1)
end
