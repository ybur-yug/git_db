module GitDb
  class Key
    def initialize(key)
      @key = key
      `mkdir db`
    end

    def hash_object(string)
      a = `echo "{string} | git hash-object -w --stdin`
      require 'pry'; binding.pry
      puts "test"
    end

    def cat_file(string, key)
      hash = hash_object(string)
      body = `git cat-file -p #{hash}` 
      require 'pry'; binding.pry
      puts "test"
    end
  end
end
