FactoryGirl.define do
  factory :home do
    
  end
  factory :shirt do
    
  end
  factory :order do
    
  end
  factory :user do
    
  end
  factory :friend do
    name "my friend"
    avatar { File.open(Rails.root.join('spec', 'support', 'mona_lisa.jpg')) }
  end
end
