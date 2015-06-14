require 'spec_helper'
require 'hw2olx/chunker'

describe 'chunkifying' do
  describe 'valid file' do
    before(:each) do
      @chunker = Hw2Olx::Chunker.new('spec/fixtures/valid_8_chunk.md')
    end
    it 'has 3 verticals' do
      expect(@chunker.chunks.length).to eq(3)
    end
    it 'has correct chunk types' do
      expect(@chunker.chunks.map(&:type)).to eq([:vertical, :vertical, :vertical])
    end
  end
  it 'should accept valid file' do
    expect { Hw2Olx::Chunker.new('spec/fixtures/valid_8_chunk.md') }.not_to raise_error
  end
  describe 'invalid file' do
    tests = {
      'invalid_content_outside_divs' => 'first element must be <h1>',
    }
    tests.each_pair do |fixture, error|
      it "when #{fixture} should report #{error}" do
        expect { Hw2Olx::Chunker.new("spec/fixtures/#{fixture}.html") }.
          to raise_error(ArgumentError, Regexp.new(error))
      end
    end
  end
end
