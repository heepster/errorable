require 'spec_helper'

class Dummy; include Errorable; end

describe Errorable do

  before(:each) do
    @dummy = Dummy.new
  end

  it "should have a get_errors method" do
    expect(@dummy).to respond_to(:get_errors)
  end

  it "should have a add_error method" do
    expect(@dummy).to respond_to(:add_error)
  end

  it "should have a flush_error method" do
    expect(@dummy).to respond_to(:flush_errors)
  end

  it "should get errors properly" do
    error_1 = "Test error #1"
    error_2 = "Test error #2"
    @dummy.add_error(error_1)
    @dummy.add_error(error_2)
    expect(@dummy.get_errors).to eq([error_1, error_2])
  end

  it "should flush errors properly" do
    error_1 = "Test error #1"
    error_2 = "Test error #2"
    @dummy.add_error(error_1)
    @dummy.add_error(error_2)
    flushed_errors = @dummy.flush_errors
    expect(flushed_errors).to eq([error_1, error_2])
    expect(@dummy.get_errors).to eq([])
  end

end
