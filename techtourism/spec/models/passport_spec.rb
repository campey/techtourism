# == Schema Information
#
# Table name: passports
#
#  id         :integer          not null, primary key
#  person_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Passport do
    
    before :each do
        @passport = FactoryGirl.create(:passport)  
    end
    
    it 'has a holder' do
        @passport.should respond_to(:holder)
    end
    
    it 'has a person as a holder' do
         @passport.holder.should be_a Person
    end
    
    it 'can get a new stamps' do
        expect{ @passport.stamp!('test', FactoryGirl.create(:person)) }.to change{ @passport.stamps.count }.from(0).to(1)
    end
    
end
