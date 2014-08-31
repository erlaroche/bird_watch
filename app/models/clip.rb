class Clip < ActiveRecord::Base
  has_many :remarks, dependent: :destroy
  belongs_to :user

  validates :title, presence: true, length: { minimum: 5 }
  validates :youtube_id, presence: true, length: { minimum: 5 }
  validates :text, presence: true, length: { minimum: 10 }

  private

  def get_additional_info
    begin
      client = YouTubeIt::OAuth2Client.new(dev_key: 'AIzaSyBt8CXXq__mHV3zy-PCw7SaFAgjre44nIA')
      video = client.video_by(uid)
      self.title = video.title
      self.duration = parse_duration(video.duration)
      self.author = video.author.name
      self.likes = video.rating.likes
      self.dislikes = video.rating.dislikes
    rescue
      self.title = '' ; self.duration = '00:00:00' ; self.author = '' ; self.likes = 0 ; self.dislikes = 0
    end
  end

  def parse_duration(d)
    hr = (d / 3600).floor
    min = ((d - (hr * 3600)) / 60).floor
    sec = (d - (hr * 3600) - (min * 60)).floor

    hr = '0' + hr.to_s if hr.to_i < 10
    min = '0' + min.to_s if min.to_i < 10
    sec = '0' + sec.to_s if sec.to_i < 10

    hr.to_s + ':' + min.to_s + ':' + sec.to_s
  end
end


