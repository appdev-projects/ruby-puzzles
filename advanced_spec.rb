require "spec_helper"

describe "hello_world.rb" do
  it "should return 'Hello, World!'", points: 1 do
    expect(HelloWorld.hello).to eq("Hello, World!")
  end
end

describe "two_fer.rb" do
  it "uses a name when given", points: 1 do
    expect(TwoFer.two_fer("Alice")).to eql("One for Alice, one for me.")
  end
end

describe "two_fer.rb" do
  it "uses any name when given", points: 1 do
    expect(TwoFer.two_fer("Bob")).to eql("One for Bob, one for me.")
  end
end

describe "hamming.rb" do
  it "works with empty strands", points: 1 do
    expect(Hamming.compute('', '')).to eq(0)
  end
end

describe "hamming.rb" do
  it "works with single letter different strands", points: 1 do
    expect(Hamming.compute('G', 'T')).to eq(1)
  end
end

describe "hamming.rb" do
  it "works with single letter identical strands", points: 1 do
    expect(Hamming.compute('A', 'A')).to eq(0)
  end
end

describe "hamming.rb" do
  it "works with long identical strands", points: 1 do
    expect(Hamming.compute('GGACTGAAATCTG', 'GGACTGAAATCTG')).to eq(0)
  end
end

describe "hamming.rb" do
  it "works with long different strands", points: 1 do
    expect(Hamming.compute('GGACGGATTCTG', 'AGGACGGATTCT')).to eq(9)
  end
end

describe "isogram.rb" do
  it "returns true when given an empty String", points: 1 do
    expect(Isogram.isogram?("")).to be(true)
  end
end

describe "isogram.rb" do
  it "returns true when given a String of all lowercase", points: 1 do
    expect(Isogram.isogram?("isogram")).to be(true)
  end
end

describe "isogram.rb" do
  it "returns false when first and last letter are the same", points: 1 do
    expect(Isogram.isogram?("angola")).to be(false)
  end
end

describe "isogram.rb" do
  it "returns false when given a String with one duplicate letter", points: 1 do
    expect(Isogram.isogram?("eleven")).to be(false)
  end
end

describe "isogram.rb" do
  it "returns false when given a String with duplicate uncommon letters", points: 1 do
    expect(Isogram.isogram?("zzyzx")).to be(false)
  end
end

describe "isogram.rb" do
  it "works with long words", points: 1 do
    expect(Isogram.isogram?("subdermatoglyphic")).to be(true)
  end
end

describe "isogram.rb" do
  it "ignores case sensitivity", points: 1 do
    expect(Isogram.isogram?("Alphabet")).to be(false)
  end
end

describe "isogram.rb" do
  it "returns true for hyphenated isograms", points: 1 do
    expect(Isogram.isogram?("thumbscrew-japingly")).to be(true)
  end
end

describe "isogram.rb" do
  it "returns false for hyphenated non-isograms", points: 1 do
    expect(Isogram.isogram?("thumbscrew-jappingly")).to be(false)
  end
end

describe "isogram.rb" do
  it "returns true for isogram with multiple hyphens", points: 1 do
    expect(Isogram.isogram?("six-year-old")).to be(true)
  end
end

describe "isogram.rb" do
  it "returns true for isogram with multiple spaces", points: 1 do
    expect(Isogram.isogram?("Emily Jung Schwartzkopf")).to be(true)
  end
end

describe "raindrops.rb" do
  it "returns the number if not a factor of 3,5, or 7", points: 1 do
    expect(Raindrops.convert(1)).to eq("1")
  end
end

describe "raindrops.rb" do
  it "returns 'Pling' when a factor of 3", points: 1 do
    expect(Raindrops.convert(3)).to eq("Pling")
  end
end

describe "raindrops.rb" do
  it "returns 'Pling' when a factor of 3", points: 1 do
    expect(Raindrops.convert(6)).to eq("Pling")
  end
end

describe "raindrops.rb" do
  it "returns 'Plang' when a factor of 5", points: 1 do
    expect(Raindrops.convert(5)).to eq("Plang")
  end
end

describe "raindrops.rb" do
  it "returns 'Plong' when a factor of 7", points: 1 do
    expect(Raindrops.convert(7)).to eq("Plong")
  end
end

describe "raindrops.rb" do
  it "returns 'Pling' when a factor of 3", points: 1 do
    expect(Raindrops.convert(8)).to eq("8")
  end
end

describe "raindrops.rb" do
  it "returns 'PlingPlang' when a factor of 3 AND 5", points: 1 do
    expect(Raindrops.convert(15)).to eq("PlingPlang")
  end
end

describe "raindrops.rb" do
  it "returns 'PlingPlong' when a factor of 3 and 7", points: 1 do
    expect(Raindrops.convert(21)).to eq("PlingPlong")
  end
end

describe "raindrops.rb" do
  it "returns 'PlangPlong' when a factor of 5 and 7", points: 1 do
    expect(Raindrops.convert(35)).to eq("PlangPlong")
  end
end

describe "raindrops.rb" do
  it "returns 'PlingPlangPlong' when a factor of 3, 5, and 7", points: 1 do
    expect(Raindrops.convert(105)).to eq("PlingPlangPlong")
  end
end

describe "raindrops.rb" do
  it "works for large numbers", points: 1 do
    expect(Raindrops.convert(3125)).to eq("Plang")
  end
end

describe "acronym.rb" do
  it "abbreviates a combination of words", points: 1 do
    expect(Acronym.abbreviate('Portable Network Graphics')).to eql("PNG")
  end
end

describe "acronym.rb" do
  it "returns an acronym in all caps", points: 1 do
    expect(Acronym.abbreviate("Ruby on Rails")).to eql("ROR")
  end
end

describe "acronym.rb" do
  it "ignores commas", points: 1 do
    expect(Acronym.abbreviate("First In, First Out")).to eql("FIFO")
  end
end

describe "acronym.rb" do
  it "acknowleges punctuation without whitespace", points: 1 do
    expect(Acronym.abbreviate("Complementary metal-oxide semiconductor")).to match("CMOS")
  end
end

describe "acronym.rb" do
  it "abbreviates a very long phrase", points: 1 do
    expect(Acronym.abbreviate("Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me")).to eql("ROTFLSHTMDCOALM")
  end
end

describe "acronym.rb" do
  it "ignores punctuation surrounded by whitespace", points: 1 do
    expect(Acronym.abbreviate("Something - I made up from thin air")).to eql("SIMUFTA")
  end
end
