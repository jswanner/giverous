class Item < CouchRest::Model
  key_accessor :name, :description, :url
end