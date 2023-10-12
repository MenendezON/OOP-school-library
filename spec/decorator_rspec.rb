require_relative '../decorator'
require_relative '../nameable'

describe Decorator do
  let(:nameable) { Person.new(52, 'Bernard', parent_permission: true) }
  let(:decorator) { Decorator.new(nameable) }

  describe 'initialize' do
    it('corrects instance') do
      expect(decorator.nameable).to eq(nameable)
    end
  end

  describe 'the correct name' do
    it('corrects the name of a person') do
      expect(decorator.correct_name).to eq('Bernard')
    end
  end
end
