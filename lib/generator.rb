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
    result = []
    people.each do |person|
      if result.map{ |ary| ary[2] }.count(companies[i]) <= 1
        person_with_company = person << companies[i]
        result << person_with_company
      else
        i += 1
        person_with_company = person << companies[i]
        result << person_with_company
      end
    end
  end

end