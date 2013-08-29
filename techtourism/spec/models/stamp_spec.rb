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

require 'spec_helper'

describe Stamp do
  pending "add some examples to (or delete) #{__FILE__}"
end
