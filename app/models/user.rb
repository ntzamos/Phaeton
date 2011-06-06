class User < ActiveRecord::Base

  validates_presence_of   :username
  validates_uniqueness_of :username, :case_sensitive => false
  validates_format_of     :username, :with  => /[A-Za-z]([\w]+)\z/i
  validates_length_of     :username, :within => 4..16, :allow_blank => true
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_attached_file :photo,
    :styles => {
      :thumb  => "48x48#",
      :small  => "128x128#"
    }
  # Setup accessible (or protected) attributes for your model
  attr_accessible :photo, :email,:username, :password, :password_confirmation, :remember_me
end
