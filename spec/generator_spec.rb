require 'rspec'
require 'generator'

describe Generator do

  it "generates an array of random people and organizations" do
    srand(0)
    output = Generator.new.generate(4)

    expect(output).to eq(
      [
        ["Sylvan", "Bradtke", "Jakubowski-Parker"],
        ["Deontae", "Jenkins", "Kilback-McDermott"],
        ["Lane", "Morissette", "Zieme, Dibbert and Smith"],
        ["Pablo", "Jaskolski", "Boehm, Denesik and Hilll"]
      ]
    )

  end

end