require_relative 'git_database'

def test
  db = GitDatabase.new
  db.save("Eggs", 12)
  db.save(10420, 13)
  db.save(:symstuff, 14)
  db.save(0.1, 132)
  puts db.find(0.1)
  puts db.find(:symstuff)
  puts db.find(10420)
  puts db.find("Eggs")
end

test
