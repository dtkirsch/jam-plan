class Jam < ActiveRecord::Base
  # start (time), end (time), set (time), name (string), date (date)
  attr_accessible :end, :name, :set, :start, :date

  # Jams have venues
  belongs_to :venue
  attr_accessible :venue_id

  # Jams have a user (intended to be the admin)
  belongs_to :user

  # Jams have songs
  has_and_belongs_to_many :songs
  attr_accessible :song_ids

  # Jams also have a bunch of users (who are attendees)
  has_and_belongs_to_many :users
  attr_accessible :user_ids

  validates_presence_of :venue, :date, :start

  def to_s
    return name if name && !(name.empty?)
    return "#{self.venue.name} jam"
  end

end
