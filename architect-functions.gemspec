Gem::Specification.new do |s|
  s.name          = 'architect-functions'
  s.version       = '0.4.0'
  s.date          = '2019-01-26'
  s.summary       = "Helper functions for AWS Lambda"
  s.description   = "Runtime helpers for AWS Lambda functions provisioned with Architect"
  s.authors       = ["Brian LeRoux"]
  s.email         = 'b@brian.io'
  s.homepage      = 'http://rubygems.org/gems/architect-functions'
  s.license       = 'Apache-2.0'
  s.require_paths = ["lib"]
  s.files = [
    "lib/architect/events.rb",
    "lib/architect/functions.rb",
    "lib/architect/http.rb",
    "lib/architect/queues.rb",
    "lib/architect/reflect.rb",
    "lib/architect/tables.rb",
    "lib/architect/ws.rb"
  ]
end
