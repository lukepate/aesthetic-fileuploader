FactoryGirl.define do
  factory :user do
    
  end
  factory :friend do
    name "my friend"
    avatar { File.open(Rails.root.join('spec', 'support', 'mona_lisa.jpg')) }
  end
end
