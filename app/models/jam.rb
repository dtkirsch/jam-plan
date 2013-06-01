class Jam < ActiveRecord::Base
  belongs_to :venue
  belongs_to :user
  attr_accessible :end, :name, :set, :start, :date
  attr_accessible :venue_id
end
