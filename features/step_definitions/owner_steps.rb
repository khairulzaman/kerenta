Given /^there is an owner named "([^"]*)"$/ do |name|
  Factory(:owner, :name => name)
end
