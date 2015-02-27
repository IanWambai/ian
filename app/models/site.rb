# == Schema Information
#
# Table name: sites
#
#  id         :integer          not null, primary key
#  urls       :string(255)
#  comments   :text
#  created_at :datetime
#  updated_at :datetime
#

class Site < ActiveRecord::Base

	belongs_to :user
end

