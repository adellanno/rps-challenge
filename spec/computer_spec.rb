require 'computer'

describe Computer do

  it "can choose either rock, paper or scissors" do
    expect(subject.choice).to eq(:rock).or eq(:paper).or eq(:scissors)
  end

end
