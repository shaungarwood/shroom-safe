FactoryBot.define do
  factory :grain_jar do
    sequence(:name) { |n| "Grain Jar #{n}" }
    innoculated { 1.month.ago }
    shaken { 1.month.ago + 2.weeks }
    retired { nil }
  end
end

