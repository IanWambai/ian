# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  approved   :boolean
#  is_admin   :boolean
#

class User < ActiveRecord::Base

end
