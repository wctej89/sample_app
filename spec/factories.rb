FactoryGirl.define do 					#what is the point of factorygirl?
  factory :user do
    name     "Michael Hartl"
    email    "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end