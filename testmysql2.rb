require 'mysql2'

client = Mysql2::Client.new(:host => "localhost",:username => "root",:password => "test123",:database => "liuzhiwen",:encoding => "utf8")
results = client.query("select * from employee")
results.each do |row|
 puts row
end
