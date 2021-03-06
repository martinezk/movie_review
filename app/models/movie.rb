class Movie < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "400x600#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  belongs_to :user

  searchkick
  has_many :reviews
end
