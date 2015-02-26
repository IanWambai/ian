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
validates :email,:presence => {:message => "Email field cannot be empty."}, :allow_blank => false,:uniqueness => { :case_sensitive => true } 
end
