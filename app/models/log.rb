class Log < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :goal

  def days_ago_in_words
    days_ago = (Date.today - date).to_i
    if days_ago == 0
      'Today'
    else
      "#{days_ago}d ago"
    end
  end
end
