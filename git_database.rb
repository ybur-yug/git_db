require 'sinatra'
require 'json'

class GitDatabase 
  attr_accessor :items
  def initialize
    `git init`
    @items = {}
  end
 
  def save(key, input)
    set(key, hash_object(input.to_s))
  end

  def find(key)
    cat_file(@items[key])
  end

  def set(key, hash)
    @items[key] = hash
  end

  def hash_object(string)
    `echo #{string} | git hash-object -w --stdin`.strip!
  end

  def cat_file(hash)
    `git cat-file -p #{hash}`
  end
end

DB = GitDatabase.new

post '/save' do
  params.keys.map { |k| DB.save(k, params[k]) }
  { message: "saved" }.to_json
end

get '/get/:key' do
  key = params[key] 
  { key: DB.find(key) }.to_json
end
