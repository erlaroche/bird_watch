class Clip < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 5 }
  validates :text, presence: true, length: { minimum: 10 }
end

# Clip.create(title: "Pigmy Nuthatch"). valid? # => true
# Clip.create(title: nil).valid? # => falsle
