require 'game'

describe Game do

  it '# expect game to respond to play' do
    expect(subject).to respond_to(:play)
  end

  it '# expect game to respond to winner' do
    expect(subject).to respond_to(:winner)
  end

  it '# expect game to respond to loser' do
    expect(subject).to respond_to(:loser)
  end

  it '# expect game to respond to draw' do
    expect(subject).to respond_to(:draw)
  end

  context "when player chooses rock and computer chooses scissors" do
    let(:computer){double :computer, choice: :scissors}
    let(:player){double :player, weapon: :rock}

      it 'expect player to win' do
        expect(subject.play(player, computer)).to eq("Player wins")
      end
  end

  context "when player chooses rock and computer chooses paper" do
    let(:computer){double :computer, choice: :paper}
    let(:player){double :player, weapon: :rock}

      it 'expect computer to win' do
        expect(subject.play(player, computer)).to eq("Computer wins")
      end
  end

  context "when player chooses rock and computer chooses rock" do
    let(:computer){double :computer, choice: :rock}
    let(:player){double :player, weapon: :rock}

      it 'expect game to be a draw' do
        expect(subject.play(player, computer)).to eq("Draw")
      end
  end

  context "when player chooses paper and computer chooses rock" do
    let(:computer){double :computer, choice: :rock}
    let(:player){double :player, weapon: :paper}

      it 'expect player to win' do
        expect(subject.play(player, computer)).to eq("Player wins")
      end
  end

  context "when player chooses paper and computer chooses scissors" do
    let(:computer){double :computer, choice: :scissors}
    let(:player){double :player, weapon: :paper}

      it 'expect player to lose' do
        expect(subject.play(player, computer)).to eq("Computer wins")
      end
  end

  context "when player chooses paper and computer chooses paper" do
    let(:computer){double :computer, choice: :paper}
    let(:player){double :player, weapon: :paper}

      it 'expect game to be a draw' do
        expect(subject.play(player, computer)).to eq("Draw")
      end
  end

  context "when player chooses scissors and computer chooses paper" do
    let(:computer){double :computer, choice: :paper}
    let(:player){double :player, weapon: :scissors}

      it 'expect player to win' do
        expect(subject.play(player, computer)).to eq("Player wins")
      end
  end

  context "when player chooses scissors and computer chooses rock" do
    let(:computer){double :computer, choice: :rock}
    let(:player){double :player, weapon: :scissors}

      it 'expect computer to win' do
        expect(subject.play(player, computer)).to eq("Computer wins")
      end
  end

  context "when player chooses scissors and computer chooses scissors" do
    let(:computer){double :computer, choice: :scissors}
    let(:player){double :player, weapon: :scissors}

      it 'expect game to be a draw' do
        expect(subject.play(player, computer)).to eq("Draw")
      end
  end

end
