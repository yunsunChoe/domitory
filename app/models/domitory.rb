class Domitory < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthablec
  has_many :croomdbs
  has_many :sleepoutdbs
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def update_with_password(params, *options)
    current_password = params.delete(:current_password)

  if params[:password].blank?
    params.delete(:password)
    params.delete(:password_confirmation) if params[:password_confirmation].blank?
  end
  
  result = if params[:password].blank? || valid_password?(current_password)
    update_attributes(params, *options)
  else
    self.assign_attributes(params, *options)
    self.valid?
    self.errors.add(:current_password, current_password.blank? ? :blank : :invalid)
    false
  end
      clean_up_passwords
      result
  end
end