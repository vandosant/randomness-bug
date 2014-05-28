require 'faker'
I18n.enforce_available_locales = false

class Generator

  def generate(length)
    length.times.map do
      [
        Faker::Name.first_name,
        Faker::Name.last_name,
        Faker::Company.name,
      ]
    end
  end

end