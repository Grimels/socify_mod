class User < ActiveRecord::Base
  # Include default devise modules. Others available are:

  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  acts_as_voter
  acts_as_follower
  acts_as_followable
  acts_as_messageable

  has_many :posts
  has_many :comments
  has_many :events
  belongs_to :country
  belongs_to :sex

  mount_uploader :avatar, AvatarUploader
  mount_uploader :cover, AvatarUploader

  validates_presence_of :name

  def admin?
    is_admin
  end

  def mailboxer_name
    return name
  end

  def mailboxer_email(object)
  #Check if an email should be sent for that object
  #if true
    return email
  #if false
  #return nil
  end

  self.per_page = 10

  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
end
