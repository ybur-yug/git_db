require 'spec_helper'

describe GitDatabase do

  let(:db) { GitDatabase::Database.new }
  it 'has a version number' do
    expect(GitDatabase::VERSION).not_to be nil
  end

  it 'saves a key to a value' do
    db.save("eggs", "12")
    expect(db.find("eggs")).to eq "12"
  end
end
