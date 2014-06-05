require 'faker'
I18n.enforce_available_locales = false

class Generator

  def initialize(length)
    @length = length
  end

  def people
    @length.times.map do
      [Faker::Name.first_name, Faker::Name.last_name]
    end
  end

  def companies
    (@length / 2).times.map do
      Faker::Company.name
    end
  end

  def generate
    i = 0
    company_list = companies
    people.map do |person|
      if i == company_list.length-1
        i = 0
        person << company_list[i]
      else
        i += 1
        person << company_list[i]
      end
    end
  end

end