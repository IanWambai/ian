# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  approved   :boolean
#  admin      :boolean
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable
validates :email,:presence => {:message => "Email field cannot be empty."}, :allow_blank => false,:uniqueness => { :case_sensitive => true } 

 # def send_super_admin_mail
 #    SuperAdminMailer.user_approval(self).deliver
 #    self.njr_code = generate_unique_njr_code
 #    self.save!
 #  end

def inactive_message 
    if !approved? 
      :not_approved 
    else 
      super # Use whatever other message 
    end 
  end
end
