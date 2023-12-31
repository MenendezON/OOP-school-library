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

  context 'fizzbuzz' do
    it 'returns \'fizz\' for multiples of 3' do
      expect(subject.fizzbuzz(3)).to eq('fizz')
      expect(subject.fizzbuzz(9)).to eq('fizz')
    end
    it 'returns \'buzz\' for multiples of 5' do
      expect(subject.fizzbuzz(5)).to eq('buzz')
      expect(subject.fizzbuzz(10)).to eq('buzz')
    end
    it 'returns \'fizzbuzz\' for multiples of both 3 and 5' do
      expect(subject.fizzbuzz(15)).to eq('fizzbuzz')
      expect(subject.fizzbuzz(30)).to eq('fizzbuzz')
    end
    it 'returns the number as a string for other cases' do
      expect(subject.fizzbuzz(7)).to eq('7')
      expect(subject.fizzbuzz(11)).to eq('11')
    end
  end
end
