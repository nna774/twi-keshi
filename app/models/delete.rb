class Delete
  include Mongoid::Document
  store_in collection: 'deletes'
  field :id_str, type: String
  field :user_id, type: Integer

  has_one :tweet, primary_key: :id_str, foreign_key: :id_str, inverse_of: :delete
end
