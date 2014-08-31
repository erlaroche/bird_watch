class Clip < ActiveRecord::Base
  has_many :remarks, dependent: :destroy
  belongs_to :user

  def snippet
    self.text.truncate(40)
  end

  def youtube_query
     response = Unirest.get("https://www.googleapis.com/youtube/v3/videos?part=snippet%2C+statistics&id=020sZ0PY8ko&key={AIzaSyBt8CXXq__mHV3zy-PCw7SaFAgjre44nIA}")
     self.description = response.body["items"][0]['snippet']['text']
     self.save
   end

  validates :title, presence: true, length: { minimum: 5 }
  validates :youtube_id, presence: true, length: { minimum: 5 }
  validates :text, presence: true, length: { minimum: 10 }
end


