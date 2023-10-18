FactoryBot.define do
  factory :grain_jar do
    sequence(:name) { |n| "Grain Jar #{n}" }
    grain { 'oats' }
  end
end

