class User
  include Mongoid::Document
  authenticates_with_sorcery!

  field :name
  field :email
  field :password
  field :password_confirmation

  attr_accessible :name, :email, :password, :password_confirmation

  validates_confirmation_of :password, :message => "should match confirmation"
  validates_presence_of :password
  validates_presence_of :email
  validates_uniqueness_of :email
end
