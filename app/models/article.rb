class Article < ActiveRecord::Base
  validates_length_of :summary, :keyword, :name, :maximum => 250
  belongs_to :category
  mount_uploader :image, ImageUploader
  scope :promo, -> { where(:promo => true) }
  scope :not_promo, -> { where(:promo => false) }
  scope :date, -> { order('updated_at ASC') }
end
