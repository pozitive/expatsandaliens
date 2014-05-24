class Article < ActiveRecord::Base
  validates_length_of :summary, :keyword, :name, :maximum => 250

  belongs_to :category
end
