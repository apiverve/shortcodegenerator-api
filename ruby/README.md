# Short Code Generator API - Ruby Gem

Short Code Generator creates custom alphanumeric short codes for vouchers, referral tokens, and redirect slugs. Specify a length, batch count, and character set like numeric, hex, or Base58 to receive an array of random strings.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_shortcodegenerator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_shortcodegenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_shortcodegenerator'

# Initialize the client
client = APIVerve::Shortcodegenerator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  count: 1,
  length: 8,
  charset: "alphanumeric"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ count: 1, length: 8, charset: "alphanumeric" })
  puts response["data"]
rescue APIVerve::Shortcodegenerator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Shortcodegenerator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Shortcodegenerator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "codes": [
      "bgiFznFh",
      "jr84hHsG",
      "Q77qABwn",
      "gvMjXxXs",
      "WDPJzCsi"
    ],
    "count": 5,
    "length": 8,
    "charset": "alphanumeric",
    "url_safe": true
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/shortcodegenerator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/shortcodegenerator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/shortcodegenerator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
