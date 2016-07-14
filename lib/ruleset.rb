class RuleSet
  attr_accessor :rules

  def initialize
    @rules = Array.new()
    @rules.push [1,1,1,0]
    @rules.push [1,1,0,1]
    @rules.push [1,0,1,1]
    @rules.push [1,0,0,0]
    @rules.push [0,1,1,1]
    @rules.push [0,1,0,1]
    @rules.push [0,0,1,1]
    @rules.push [0,0,0,0]
  end

  def select(target)
    @rules.select{|rule| rule[0..2] == target}.first
  end

  def output_given_input(input)
    self.select(input)[3]
  end
end
