Given /^the application is running$/ do
  run_interactive(unescape("ruby chatbot.rb"))
end

Then /^I should see "([^""]*)"$/ do |arg1|
  assert_partial_output(arg1)
end

Given /^I see "([^""]*)"$/ do |arg1|
  assert_partial_output(arg1)
end

When /^I type "([^""]*)" and press Enter$/ do |arg1|
  type(arg1)
end

Given /^I have introduced myself as "([^""]*)"$/ do |name|
  run_interactive(unescape("ruby chatbot.rb"))
  type(name)
end

Then /^I should see:$/ do |string|
  assert_partial_output(string)
end

Then /^the program should quit$/ do
  @interactive.stop.should == 0
end

When /^I type an integer between "([^""]*)" and "([^""]*)" inclusive$/ do |arg1, arg2|
  a = Array(arg1.to_i.upto(arg2.to_i))
  type(a[rand(a.size)].to_s)
end
