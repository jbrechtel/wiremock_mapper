require 'spec_helper'

describe WireMockMapper::ResponseBuilder do
  context 'with_body' do
    it 'adds the body' do
      builder = WireMockMapper::ResponseBuilder.new
      builder.with_body('some body')
      result = builder.to_hash
      expect(result['body']).to eq('some body')
    end

    it 'converts value to_json if it is not a string' do
      builder = WireMockMapper::ResponseBuilder.new
      builder.with_body(some: 'hash')
      result = builder.to_hash
      expect(result['body']).to eq('{"some":"hash"}')
    end
  end
end
