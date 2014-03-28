# OmniAuth Paymill [![Build Status](https://travis-ci.org/groupbuddies/omniauth-paymill.svg?branch=master)](https://travis-ci.org/groupbuddies/omniauth-paymill)

This gem contains the [Paymill Connect](https://www.paymill.com/tr-tr/documentation-3/add-ons/connect/) strategy for OmniAuth.

## Before you begin

You should have already installed OmniAuth into your app; if not, read the [OmniAuth README](https://github.com/intridea/omniauth) to get started.

You'll need a Paymill application, see [here](https://paymill.com/en-gb/unite-documentation/#registerApplication) how to create one.

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-paymill'

If you need the latest HEAD version, you can do so with:

    gem 'omniauth-paymill', github: 'groupbuddies/omniauth-paymill'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-paymill


## Usage

You just need to tell OmniAuth about this provider. For a Rails app, your
`config/initializers/omniauth.rb` file should look like this:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :paymill, "CLIENT_ID", "CLIENT_SECRET", scope: "..."
end
```

Replace `CLIENT_ID` and `CLIENT_SECRET` with the appropriate values you obtained when creating an app earlier.

The available scopes are detailed on the [Paymill Connect documentation](https://www.paymill.com/tr-tr/documentation-3/add-ons/connect/).

## Authentication Hash
An example auth hash available in `request.env['omniauth.auth']`:

    {
        "access_token": "55727e05094c17ef44649a1710b00d57",
        "expires_in": null,
        "token_type": "bearer",
        "scope": "transactions_rw refunds_rw",
        "refresh_token": "07fda540e5283039683f6400651b5eaf",
        "merchant_id": "mer_1d70acbf80c8c35ce83680715c06be0d15c06be0d",
        "is_active": true,
        "methods": ["visa", "mastercard"],
        "currencies": ["EUR", "GPB],
        "payment_methods": [
            {
                "type": "visa",
                "currency": "EUR",
                "acquirer": "wirecard"
            },
            {
                "type": "visa",
                "currency": "GBP",
                "acquirer": "wirecard"
            },
            {
                "type": "mastercard",
                "currency": "EUR",
                "acquirer": "wirecard"
            }
        ],
        "access_keys": {
            "test": {
                "public_key": "342070708285cd3d98606d2986cb470f",
                "private_key": "4fe2b5ba56ff916eb4e644bad381e62e"
            },
            "live": {
                "public_key": "8175823c16dd0c7b222e9ea0e7352e51",
                "private_key": "55727e05094c17ef44649a1710b00d57"
            }
        },
        "livemode": true,
        "public_key": "8175823c16dd0c7b222e9ea0e7352e51",
    }

## Supported Rubies

OmniAuth Paymill is tested under 1.8.7, 1.9.2, 1.9.3, 2.0.0, 2.1.1, Ruby
Enterprise Edition and JRuby.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Note: Do not forget to add tests for the new features.

## License

See [`LICENSE.txt`](https://github.com/groupbuddies/omniauth-paymill/blob/master/LICENSE.txt).
