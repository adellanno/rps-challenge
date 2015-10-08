require 'computer'

describe Computer do

  it "can choose either rock, paper or scissors" do
    expect(subject.comp_choice).to eq(:rock).or eq(:paper).or eq(:scissors)
  end
  
end
