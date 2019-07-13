Gem::Specification.new do |s|
  s.name          = 'architect-functions'
  s.version       = '0.5.1'
  s.date          = '2019-01-26'
  s.summary       = 'Helper functions for AWS Lambda'
  s.description   = 'Runtime helpers for AWS Lambda functions provisioned with Architect'
  s.authors       = ['Brian LeRoux']
  s.email         = 'b@brian.io'
  s.homepage      = 'http://rubygems.org/gems/architect-functions'
  s.license       = 'Apache-2.0'
  s.require_paths = ['lib']
  s.files = [
    'lib/architect/events.rb',
    'lib/architect/functions.rb',
    'lib/architect/http.rb',
    'lib/architect/queues.rb',
    'lib/architect/reflect.rb',
    'lib/architect/tables.rb',
    'lib/architect/ws.rb'
  ]
  s.add_runtime_dependency 'aws-sdk-dynamodb',   '~> 1.33', '>= 1.33.0'
  s.add_runtime_dependency 'aws-sdk-sqs',        '~> 1.18', '>= 1.18.0'
  s.add_runtime_dependency 'aws-sdk-sns',        '~> 1.18', '>= 1.18.0'
  s.add_runtime_dependency 'aws-sdk-s3',         '~> 1.45', '>= 1.45.0'
  s.add_runtime_dependency 'aws-sdk-ssm',        '~> 1.52', '>= 1.52.0'
  s.add_runtime_dependency 'aws-sdk-apigateway', '~> 1.33', '>= 1.33.0'
  s.add_runtime_dependency 'jwe',                '~> 0.4',  '>= 0.4.0'
end
