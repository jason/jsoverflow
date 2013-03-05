# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :code do
    content "MyText"
    code_type_id 1
  end
end
