require 'player'

describe Player do

  it '# expect player to respond to choice' do
    expect(subject).to respond_to(:choice)
  end

  it 'expect choice to store rock in weapon' do
    subject.choice("rock")
    expect(subject.weapon).to eq(:rock)
  end

  it 'expect choice to store paper in weapon' do
    subject.choice("paper")
    expect(subject.weapon).to eq(:paper)
  end

  it 'expect choice to store scissors in weapon' do
    subject.choice("scissors")
    expect(subject.weapon).to eq(:scissors)
  end

  it 'expect to be prompted to enter rock, paper or scissors if something else is entered' do
    expect(subject.choice("pineapples")).to eq("Please enter either rock, paper or scissors")
  end

end
