class Document < ApplicationRecord
  vectorsearch

  after_save :upsert_to_vectorsearch

  belongs_to :user
end
