require "spec_helper"
require 'converter'

describe Converter do
  subject(:converter) { described_class.new(string) }
  let(:string) { "Example string" }

  describe '.convert' do
    it 'converts a string given a type' do
      expect(converter.convert_to(:text)).to eq "Example string"
    end

    it 'raises an error given an unrecognised type' do
      expect { converter.convert_to(:garbage) }.to raise_error "Unrecognised type"
    end
  end
end
