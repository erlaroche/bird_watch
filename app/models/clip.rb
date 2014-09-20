class Clip < ActiveRecord::Base
  has_many :remarks, dependent: :destroy
  belongs_to :user

  def snippet
    self.text.truncate(40)
  end
	# add maximun characters
  validates :title, presence: true, length: { minimum: 5 }
  validates :youtube_id, presence: true, length: { minimum: 5 }
  validates :text, presence: true, length: { minimum: 10 }
end


