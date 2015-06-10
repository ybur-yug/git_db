require "git_database/version"

module GitDatabase
  class Database 
    attr_accessor :items
    def initialize
      `git init`
      @items = {}
    end
   
    def save(key, input)
      set(key, hash_object(input.to_s))
    end

    def find(key)
      cat_file(@items[key]).strip!
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
end
