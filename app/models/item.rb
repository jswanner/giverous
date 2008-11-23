class Item < CouchRest::Model
  use_database CouchRest.database!('http://localhost:5984/giverous-users')
  key_accessor :name, :description, :url

  view_by :user,
    :map => 
"function(doc){
  if(doc['couchrest-type'] === 'Item'){
    emit(doc.user_id, null);
  }
}"
end