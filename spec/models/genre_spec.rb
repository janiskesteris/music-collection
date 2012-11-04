require 'spec_helper'

describe Genre do
  it "should fail validations if name is not present" do
    genre = Fabricate.build(:genre, name: "")
    genre.should_not be_valid
  end
end
