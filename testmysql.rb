require "dbi"
 
begin
     dbh = DBI.connect("DBI:Mysql:liuzhiwen:localhost", 
                       "root", "test123")
      sth = dbh.prepare( "select * from employee where income > ?" );
     sth.execute(1500);
     sth.fetch do |row|
        printf "First Name: %s, Last Name: %s\n", row[0],row[1]
        printf "Age: %d, Sex: %s\n",row[2],row[3]
        printf "Salary: %d\n\n",row[4]
     end
     sth.finish
rescue DBI::DatabaseError => e
     puts "An error occurred"
     puts "Error code:    #{e.err}"
     puts "Error message: #{e.errstr}"
     dbh.rollback
ensure
      dbh.disconnect if dbh
end
