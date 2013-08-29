# == Schema Information
#
# Table name: passports
#
#  id         :integer          not null, primary key
#  person_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Passport < ActiveRecord::Base
   belongs_to :holder, class_name: "Person"
   has_many :stamps
   
   def stamp!(description, stamper)
        stamps.create(:description => description, :stamper => stamper)
   end
   
end
