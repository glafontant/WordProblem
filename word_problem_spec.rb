require 'rspec'
require_relative 'word_problem'

describe WordProblem, %q{

Write a program that solves word problems for you.
It should be able to answer the following questions:

What is 7 plus 12?
What is 8 minus 2?
What is 4 times 3?

----- ignore for now -----
It should return a numeric solution. 
Your program should take large numbers and negative numbers into account.


  } do

  let(:word_solver) { WordProblem.new }

  it "solves 7 plus 12" do
    expect(word_solver.solve("What is 7 plus 12?")).to eql(19)
  end

  it "solves 33 plus 85" do
    expect(word_solver.solve("What is 33 plus 85?")).to eql(118)
  end

  it "solves 3000 plus -4000" do
    expect(word_solver.solve("What is 3000 plus -4000?")).to eql(-1000)
  end

  it "solves 8 minus -22" do
    expect(word_solver.solve("What is 8 minus -22?")).to eql(30)
  end

  it "solves 8 minus 2" do
    expect(word_solver.solve("What is 8 minus 2?")).to eql(6)
  end

  it "solves 4 times 3" do
    expect(word_solver.solve("What is 4 times 3?")).to eql(12)
  end

  it "solves 4 times 4" do
    expect(word_solver.solve("What is 4 times 4?")).to eql(16)
  end

   it "solves 5 times -5" do
    expect(word_solver.solve("What is 5 times -5?")).to eql(-25)
  end
end
