class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validate :not_clickbait
  
  CLICKBAIT_PATTERNS = [
    /Won't Believe/i,
    /Secret/i,
    /Top [0-9]*/i,
    /Guess/i
  ]

  def not_clickbait
<<<<<<< HEAD
    if CLICKBAIT_PATTERNS.none? { |bait| bait.match title }
=======
    if CLICKBAIT_PATTERNS.none? { |pat| pat.match title }
>>>>>>> b009009a15b7b2195342576f0ac17dcced5853e4
      errors.add(:title, "must be clickbait")
    end
  end
end