class User < CouchRest::Model
  use_database CouchRest.database!('http://localhost:5984/giverous-users')
  unique_id :name
  key_accessor :display_name, :email, :name
  
  view_by :name  
end