class Rsvp < ActiveRecord::Base
  enum response: [:coming, :not_coming]
  validates :name, presence: true
end
