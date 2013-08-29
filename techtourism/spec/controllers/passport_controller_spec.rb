require 'spec_helper'

describe PassportController do
    it 'assigns a list of all the passports' do
        passport = FactoryGirl.create(:passport)
        get :index
        assigns[:passports].should == [ passport ]
    end
end
