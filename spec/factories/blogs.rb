FactoryGirl.define do
  factory :blog do
    title do
      Faker::StarWars.droid + 'がすき！' +
      Faker::StarWars.character + 'ブログ'
    end
  end
end
