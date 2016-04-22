When /I should see the following (.*): (.*)/ do |inputtype, fieldlist|
  # HINT: use String#split to split up the rating_list, then
  #   iterate over the ratings and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
  fields = fieldlist.split(", ")
  if inputtype == 'buttons'
    fields.each do |f|
      page.should have_selector("input[type=submit][value='Create Form']")
    end
  else
    fields.each do |f|
      page.should have_content(f)
    end
  end
end
When /^I attach the file "([^"]*)"$/ do |file|
#unimplemented
end

When /^(?:|I )select "([^"]*)" for equipment rentals from "([^"]*)"$/ do |value, field|
  @tempForm = Form.new
  if field == "6' Table ($10)"
    whereFrom = :numTables
    select(value, :from => whereFrom)
    @tempForm.numTables = value
  elsif field == "Folding Chair ($5)"
    whereFrom = :numChairs
    select(value, :from => whereFrom)
    @tempForm.numChairs = value
  elsif field == "11' Market Umbrella ($50)"
    whereFrom = :numbrellas
    select(value, :from => whereFrom)
    @tempForm.numbrellas = value
  elsif field == "10x10' Food Service Tent ($110)"
    whereFrom = :numTents
    select(value, :from => whereFrom)
    @tempForm.numTents = value
  end
end

Then /^the "([^"]*)" field(?: within (.*))? for equipment rentals should contain "([^"]*)"$/ do |field, parent, value|
  with_scope(parent) do
      if field == "6' Table ($10)"
        @tempForm.numTables.should == value
      elsif field == "Folding Chair ($5)"
        @tempForm.numChairs.should == value
      elsif field == "11' Market Umbrella ($50)"
        @tempForm.numbrellas.should == value
      elsif field == "10x10' Food Service Tent ($110)"
        @tempForm.numTents.should == value
      end
  end
end

Then /^the ([^"]*) of "([^"]*)" should be "([^"]*)"$/ do |arg1, arg2, arg3|
   #Implement ME
end

Then /^the ([^"]*) of "([^"]*)" in the csv should be "([^"]*)"$/ do |arg1, arg2, arg3|
   #Implement ME
end

Then /^the ([^"]*) should receive a confirmation email containing the file "([^"]*)"$/ do |arg1, arg2|
  #Implement ME
end

Given a form is submitted successfully do
  #implement
end

And /I use the email "([^"]*)"/ do |email|
#implement
end


Then /as "([^"]*)", I should receive a confirmation at "([^"]*)"/ do |who, email|
#implement
end

And /I should also be able to see their submission/ do 
end
