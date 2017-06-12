class Atweet < ActiveRecord::Base
  validates :content, presence: true
   validates_length_of :content, :maximum => 140
end
