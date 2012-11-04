require 'spec_helper'

describe Album do
  it "should fail validations if name, artist, label, released_on and genre is not present" do
    %w{name artist label released_on genre_id}.each do |field_name|
      Fabricate.build(:album, field_name => "").should_not be_valid
    end
  end

  it "should fail validations if name is too long" do
    Fabricate.build(:album, name: Faker::Lorem.characters(151)).should_not be_valid
  end

  it "should fail validations if description is too long" do
    Fabricate.build(:album, name: Faker::Lorem.characters(1001)).should_not be_valid
  end

  it "should not be able to save user through mass assignment" do
    album = Fabricate :album
    lambda { album.update_attributes user_id: Fabricate(:user).id }.should raise_error(ActiveModel::MassAssignmentSecurity::Error)
  end

end
