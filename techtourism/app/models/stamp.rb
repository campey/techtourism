# == Schema Information
#
# Table name: stamps
#
#  id          :integer          not null, primary key
#  description :string(255)
#  person_id   :integer
#  passport_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Stamp < ActiveRecord::Base
  attr_accessible :description, :stamper
  
  belongs_to :stamper, class_name: "Person"
  belongs_to :passport

end
