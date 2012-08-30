class Entry < ActiveRecord::Base
  attr_accessible :body
  scope :newly, order('created_at DESC')

  def subject
    body.split("\n").first
  end
end
