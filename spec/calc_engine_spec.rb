# https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
require 'spec_helper'

describe "Testing the calc engine" do

  before(:all) do
    @calc = CalcEngine.new()
  end

  it "should add two numbers together" do
    expect(@calc.add_two_numbers(1,1)).to eq(2)
  end
  it "should subtract two numbers together" do
    expect(@calc.subtract_two_numbers(3,2)).to eq(1)
  end
  it "should multiply two numbers together" do
    expect(@calc.multiply_two_numbers(3,2)).to eq(6)
  end
  it "should divide two numbers together" do
    expect(@calc.divide_two_numbers(6,2)).to eq(3)
  end
  it "should find the power of two numbers" do
    expect(@calc.power(2,2)).to eq(4)
  end
  it "should find the BMI metric" do
    expect(@calc.metric(1.64,65)).to eq(24.167162403331353)
  end
  it "should find the BMI imperial" do
    expect(@calc.imperial(10,100)).to eq(703.0)
  end
  it "should calculate trip" do
    expect(@calc.trip(60,60,1,60)).to eq(1)
  end

end
