class Player

  attr_reader :weapon

  def initialize
    @options = [:rock, :paper, :scissors]
  end

  def choice(choice)
    if @options.include? choice.to_sym
      @weapon = choice.to_sym
    else
      "Please enter either rock, paper or scissors"
    end
  end

end
