# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :passport do |passport|
      passport.holder { FactoryGirl.create(:person) }
  end
end
