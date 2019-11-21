class PostValidator < ActiveModel::Validator

  def validate(record)
    arr = [
      /Won't Believe/,
      /Secret/,
      /Top/,
      /Guess/
    ]
    if arr.none? { |check| check.match title}
        errors.add(:title, "it must be clickbait")
    end
  end
end