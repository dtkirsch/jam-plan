# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :jam do
    name "MyString"
#factory_girl syntax doesn't seem to like method names that are also keywords
#    start "2013-05-31 16:37:15"
#    end "2013-05-31 16:37:15"
    set "2013-05-31 16:37:15"
    venue nil
    user nil
  end
end
