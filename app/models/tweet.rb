class Tweet
  include Mongoid::Document
  store_in collection: 'tweets'
  field :id_str, type: String
  field :created_at, type: Time
  field :text, type: String
  field :user, type: Hash

  belongs_to :delete, inverse_of: :tweet
end
