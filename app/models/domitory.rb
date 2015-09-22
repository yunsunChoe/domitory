class Domitory < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthablec
  has_many :croomdbs
  has_many :sleepoutdbs
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         private
  
end
