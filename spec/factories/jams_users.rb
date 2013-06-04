# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :jams_user, :class => 'JamsUsers' do
    jam nil
    user nil
  end
end
