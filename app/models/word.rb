class Word < ActiveRecord::Base
  belongs_to :subcategory
  has_many :results
end
