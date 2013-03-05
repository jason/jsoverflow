class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:facebook]

  has_many :votes, :dependent => :destroy
  has_many :questions
  has_many :answers
  has_many :comments
  
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :provider, :uid

  def self.find_by_facebook_auth(auth)
    find_by_omniauth(auth)
  end

  def self.find_by_omniauth(auth)
    user = User.find_by_email(auth.info.email)
    unless user
      user = User.create(email: auth.info.email,
                         provider: auth.provider,
                         uid: auth.uid,
                         password: Devise.friendly_token[0, 20])
    end
    user
  end
end
