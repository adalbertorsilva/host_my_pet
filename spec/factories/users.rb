FactoryGirl.define do

  factory :user do
    name { Faker::User.name }
    gender { Faker::User.gender }
    phone { Faker::User.phone }
    email { Faker::User.email }
    password { Faker::User.password }
  end

  trait :test_user do
    name "Usuario de Teste"
    gender "Codigo"
    phone 12345678912
    email "usuariodeteste@exemplo.com.br"
    password "senha"
  end

end
