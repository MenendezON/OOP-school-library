require_relative '../capitalize_decorator'
require_relative '../decorator'

describe CapitalizeDecorator do
  let(:nameable) { Person.new(43, 'arthur', parent_permission: true) }
  let(:decorator) { CapitalizeDecorator.new(nameable) }

  describe 'the correct name' do
    it('capitalizes the name') do
      expect(decorator.correct_name).to eq('Arthur')
    end
  end
end
