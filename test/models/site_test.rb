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

require 'test_helper'

class SiteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
