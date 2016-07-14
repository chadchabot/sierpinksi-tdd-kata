require 'evolver'

describe Evolver do
  let(:ruleset) { RuleSet.new() }
  it "ruleset to not be nil" do
    expect(ruleset).to_not be_nil
  end

  it "ruleset is a Ruleset" do
    expect(ruleset).to be_kind_of(RuleSet)
  end

  it "rule 0 is an Array" do
    expect(ruleset.rules[0]).to be_kind_of(Array)
  end

  it "rule 0 outputs 0" do
    rule0 = ruleset.rules[0]
    expect(rule0[3]).to eq(0)
  end

  it "rule 0 matches 111" do
    needle = "111".split("").map {|v| v.to_i}
    expect(ruleset.select(needle)).to eq([1,1,1,0])
  end

  let(:evolver) { Evolver.new() }
  let(:row) { "010" }
  it "row 010 becomes 110" do
    expect(evolver.next(row)).to eq("110")
  end

  let(:row2) { "0101010111" }
  it "row 0101010111 becomes 1111111101" do
    expect(evolver.next(row2)).to eq("1111111101")
  end

end
