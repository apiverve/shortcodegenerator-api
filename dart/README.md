# Short Code Generator API - Dart/Flutter Client

Short Code Generator creates custom alphanumeric short codes for vouchers, referral tokens, and redirect slugs. Specify a length, batch count, and character set like numeric, hex, or Base58 to receive an array of random strings.

[![pub package](https://img.shields.io/pub/v/apiverve_shortcodegenerator.svg)](https://pub.dev/packages/apiverve_shortcodegenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Short Code Generator API](https://apiverve.com/marketplace/shortcodegenerator?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_shortcodegenerator: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_shortcodegenerator/apiverve_shortcodegenerator.dart';

void main() async {
  final client = ShortcodegeneratorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'count': 1,
      'length': 8,
      'charset': 'alphanumeric'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Short Code Generator API](https://apiverve.com/marketplace/shortcodegenerator?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/shortcodegenerator](https://docs.apiverve.com/ref/shortcodegenerator?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
