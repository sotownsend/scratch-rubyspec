check 'short-circuits evaluation at the first condition to be false' do
x = nil
    true && false && x = 1
    x.should be_nil
  
end

check 'evaluates to the first condition not to be true' do
("yes" && 1 && nil && true).should == nil
    ("yes" && 1 && false && true).should == false
  
end

check 'evaluates to the last condition if all are true' do
("yes" && 1).should == 1
    (1 && "yes").should == "yes"
  
end

check 'evaluates the full set of chained conditions during assignment' do
x, y = nil
    x = 1 && y = 2
    # "1 && y = 2" is evaluated and then assigned to x
    x.should == 2
  
end

check 'treats empty expressions as nil' do
(() && true).should be_nil
    (true && ()).should be_nil
    (() && ()).should be_nil
  
end

check 'short-circuits evaluation at the first condition to be false' do
x = nil
    true and false and x = 1
    x.should be_nil
  
end

check 'evaluates to the first condition not to be true' do
("yes" and 1 and nil and true).should == nil
    ("yes" and 1 and false and true).should == false
  
end

check 'evaluates to the last condition if all are true' do
("yes" and 1).should == 1
    (1 and "yes").should == "yes"
  
end

check 'when used in assignment, evaluates and assigns expressions individually' do
x, y = nil
    x = 1 and y = 2
    # evaluates (x=1) and (y=2)
    x.should == 1
  
end

check 'treats empty expressions as nil' do
(() and true).should be_nil
    (true and ()).should be_nil
    (() and ()).should be_nil
  
end
