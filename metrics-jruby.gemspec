lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
require 'metrics_jruby/version'

Gem::Specification.new do |s|
  s.name        = 'metrics-jruby'
  s.version     = MetricsJruby::Version::version
  s.platform    = 'jruby'
  s.licenses    = ['ALv2']
  s.summary     = 'metrics for jruby'
  s.description = 'Don\'t care about loading the jars, just use this gem.'
  s.authors     = ['Rainer Jung']
  s.email       = 'rainer.jung@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test}/*`.split("\n")
  s.add_development_dependency 'minitest', '~> 4.7.5'
  s.homepage    = 'https://rynr.github.io/metrics-jruby/'
end
