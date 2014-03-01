class Clip < ActiveRecord::Base
  has_many :remarks, dependent: :destroy

  validates :title, presence: true, length: { minimum: 5 }
  validates :youtube_id, presence: true, length: {minimum: 7}
  validates :text, presence: true, length: { minimum: 10 }
end


