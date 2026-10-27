Pod::Spec.new do |s|
  s.name             = 'APIVerveShortCodeGenerator'
  s.version          = '1.2.3'
  s.summary          = 'Short Code Generator creates custom alphanumeric short codes for vouchers, referral tokens, and redirect slugs.'
  s.description      = <<-'DESC'
Short Code Generator creates custom alphanumeric short codes for vouchers, referral tokens, and redirect slugs. Specify a length, batch count, and character set like numeric, hex, or Base58 to receive an array of random strings.

This iOS/macOS SDK provides a convenient way to access the Short Code Generator from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/shortcodegenerator?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/shortcodegenerator-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveShortCodeGenerator/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
