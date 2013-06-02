# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :jams_song, :class => 'JamsSongs' do
    jam nil
    song nil
  end
end
