class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :instrument
  validates_presence_of :name, :instrument

  # Users have a bunch of jams they're attending
  has_and_belongs_to_many :jams
  attr_accessible :jam_ids

  def attending?(jam)
    jams.include? jam
  end
  
end
