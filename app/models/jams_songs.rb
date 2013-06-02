class JamsSongs < ActiveRecord::Base
  belongs_to :jam
  belongs_to :song
  # attr_accessible :title, :body
end
