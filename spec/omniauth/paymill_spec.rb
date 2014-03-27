require 'spec_helper'

describe OmniAuth::Strategies::Paymill do
  subject do
    args = ['appid', 'secret', @options || {}].compact
    OmniAuth::Strategies::Paymill.new(*args)
  end

  describe 'client options' do
    it 'should have correct name' do
      expect(subject.options.name).to eq('paymill')
    end

    it 'should have correct site' do
      expect(subject.options.client_options.site).to eq('https://connect.paymill.com')
    end

    it 'should have correct authorize url' do
      expect(subject.options.client_options.authorize_url).to eq('/authorize')
    end

    it 'should have correct token url' do
      expect(subject.options.client_options.token_url).to eq('/token')
    end
  end
end

