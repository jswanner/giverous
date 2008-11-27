class User < CouchRest::Model
  use_database CouchRest.database!('http://localhost:5984/giverous-users')
  unique_id :name
  key_accessor :display_name, :email, :name
  key_writer :items
  cast :items, :as => ['Item']
  
  view_by :name
  
  def items
    self['items'] ||= []
  end
end