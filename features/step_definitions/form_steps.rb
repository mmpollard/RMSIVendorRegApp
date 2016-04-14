When /I should see the following (.*): (.*)/ do |inputtype, fieldlist|
  # HINT: use String#split to split up the rating_list, then
  #   iterate over the ratings and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
  fields = fieldlist.split(", ")
  fields.each do |f|
    if page.respond_to? :should
        page.should have_content(f)
    else
        assert page.has_content?(f)
    end
  end
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
