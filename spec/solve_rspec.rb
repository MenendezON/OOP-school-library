require 'rspec'
require_relative '../solve'

describe Solve do
  subject { Solve.new }
  context 'factorial' do
    it 'returns 1 when the input is 0' do
      expect(subject.factorial(0)).to eq(1)
    end

    it 'returns the correct factorial for positive integers' do
      expect(subject.factorial(5)).to eq(120)
      expect(subject.factorial(7)).to eq(5040)
    end

    it 'raises an exception for negative integers' do
      expect { subject.factorial(-3) }.to raise_error(ArgumentError)
    end
  end
  context 'reverse' do
    it 'reverses a word' do
      expect(subject.reverse('hello')).to eq('olleh')
      expect(subject.reverse('world')).to eq('dlrow')
    end
  end
end
