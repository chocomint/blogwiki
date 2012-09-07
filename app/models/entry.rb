# vim:fileencoding=UTF-8
class Entry < ActiveRecord::Base
  attr_accessible :body
  attr_accessor :more

  paginates_per 30
  max_paginates_per 100

  scope :newly, order('created_at DESC')

  validates :body, :presence => {:message => "本文が入力されていません"}

  def subject
    body ? body.split("\n").first : "-"
  end
end
