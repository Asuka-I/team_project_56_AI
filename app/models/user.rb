class User < ApplicationRecord
  has_many :watch_progresses, dependent: :destroy
  has_many :whatch_progressesed_users, through: :watch_progresses, source: :movie
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
end
