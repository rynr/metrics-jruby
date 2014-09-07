require 'rake/testtask'
require 'net/http'
require 'rexml/document'
require 'rexml/xpath'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/test*.rb']
  t.verbose = true
end

desc "Run tests"
task :default => :test

namespace :metrics do
  METADATA_URL = 'http://central.maven.org/maven2/io/dropwizard/metrics/metrics-core/maven-metadata.xml'
  JAR_URL = 'http://central.maven.org/maven2/io/dropwizard/metrics/metrics-core/%{version}/metrics-core-%{version}.jar'
  VERSION_XPATH = '//metadata/versioning/release'

  desc 'Fetch newest metrics jars'
  task :update do
    version=REXML::XPath.first(REXML::Document.new(Net::HTTP.get_response(URI.parse(METADATA_URL)).body), VERSION_XPATH).text
    puts "Newest version: #{version}"
    url = JAR_URL % { :version => version }
    puts "fetching from #{url}"
    File.open(File.expand_path("../lib/java/metrics-core-#{version}.jar", __FILE__), 'w') { |f| f.write Net::HTTP.get_response(URI.parse(url)).body }
    puts "Updating version"
    version_class = File.open(File.expand_path('../lib/metrics_jruby/version.rb', __FILE__), 'r').read
    File.open(File.expand_path('../lib/metrics_jruby/version.rb', __FILE__), 'w').write version_class.gsub(/JAVA_VERSION\s*=\s*['"][^'"]*['"]/, "JAVA_VERSION = '#{version}'")
  end

end
