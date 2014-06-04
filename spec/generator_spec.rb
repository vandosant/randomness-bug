require 'rspec'
require_relative '../lib/generator'
require 'pp'

describe 'Generator' do
  it 'creates as many people as the length' do
    people_test = Generator.new(4).people

    expect(people_test.length).to eq 4
    expect(people_test).to eq people_test.uniq
  end

  it 'creates half as many unique companies as the length' do
    company_test = Generator.new(4).companies

    expect(company_test.length).to eq 2
    expect(company_test).to eq company_test.uniq
  end

  it 'creates a list of people and their companies' do
    generator_test = Generator.new(100).generate

    expect(generator_test.length).to eq 100
    expect(generator_test).to eq generator_test.uniq

    expect(generator_test.map{ |ary| ary[2] }.uniq.length).to eq 50
  end
end