require 'faker'

FactoryBot.define do
    factory :User do
        id {1}
        email {Faker::Internet.email}
        password{"qwerty"}
    end
end