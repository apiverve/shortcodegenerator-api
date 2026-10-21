# Short Code Generator API - PHP Package

Short Code Generator creates custom alphanumeric short codes for vouchers, referral tokens, and redirect slugs. Specify a length, batch count, and character set like numeric, hex, or Base58 to receive an array of random strings.

## Installation

Install via Composer:

```bash
composer require apiverve/shortcodegenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Shortcodegenerator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'count' => 1,
    'length' => 8,
    'charset' => 'alphanumeric'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Shortcodegenerator\Client;
use APIVerve\Shortcodegenerator\Exceptions\APIException;
use APIVerve\Shortcodegenerator\Exceptions\ValidationException;

try {
    $response = $client->execute(['count' => 1, 'length' => 8, 'charset' => 'alphanumeric']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/shortcodegenerator?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/shortcodegenerator?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/shortcodegenerator?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
