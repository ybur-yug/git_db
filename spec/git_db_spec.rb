require 'spec_helper'

describe GitDb do
  it 'has a version number' do
    expect(GitDb::VERSION).not_to be nil
  end

  it 'does something useful' do
    stuff = GitDb::Key.new('key').cat_file("things", "test")
  end
end
