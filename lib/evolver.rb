require_relative 'ruleset'

class Evolver
  def initialize
    @ruleset = RuleSet.new
  end

  def next(row)
    (1..row.length).map do |idx|
      selection = ("0"+row+"0")[idx-1..idx+1].split("").map {|v| v.to_i}
      @ruleset.output_given_input(selection).to_s
    end.join()
  end
end
