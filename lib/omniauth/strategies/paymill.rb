require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Paymill < OmniAuth::Strategies::OAuth2
      option :name, 'paymill'

      option :client_options, {
        :site => 'https://connect.paymill.com',
        :token_url => "/token",
        :authorize_url => "/authorize",
        :proxy => ENV['http_proxy'] ? URI(ENV['http_proxy']) : nil
      }

      uid { raw_info['merchant_id'] }

      extra do
        { :raw_info => raw_info }
      end

      def raw_info
        @raw_info ||= access_token.params
      end
    end
  end
end
