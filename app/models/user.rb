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

  has_many :urls
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable
validates :email,:presence => {:message => "Email field cannot be empty."}, :allow_blank => false,:uniqueness => { :case_sensitive   => true } 

 # def send_super_admin_mail
 #    SuperAdminMailer.user_approval(self).deliver
 #    self.njr_code = generate_unique_njr_code
 #    self.save!
 #  end

 def active_for_authentication? 
     super && approved? 
   end 

   def inactive_message 
     if !approved? 
       :not_approved 
     else 
       super # Use whatever other message 
     	end
	end 

	# after_create { AdminMailer.send_admin_mail(@user).deliver }
	# def new_user_waiting_for_approval
		
	# end

     # after_create :send_admin_mail
     #   def send_admin_mail
     #    AdminMailer.user_approval(self).deliver
     #   end	

       def self.send_reset_password_instructions(attributes={})
          recoverable = find_or_initialize_with_errors(reset_password_keys, attributes, :not_found)
          if !recoverable.approved?
            recoverable.errors[:base] << I18n.t("devise.failure.not_approved")
          elsif recoverable.persisted?
            recoverable.send_reset_password_instructions
          end
          recoverable
        end
    end

