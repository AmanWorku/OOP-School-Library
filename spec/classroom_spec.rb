require_relative '../classrom'

RSpec.describe Classroom do
  subject(:classroom) { described_class.new('Full Stack Development') }

  describe '#label' do
    it 'returns the correct label' do
      expect(classroom.label).to eq 'Full Stack Development'
    end
  end
end
