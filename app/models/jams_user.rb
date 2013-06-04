class JamsUser < ActiveRecord::Base
  belongs_to :jam
  belongs_to :user
  # attr_accessible :title, :body
  attr_accessible :jam_id, :user_id
end
