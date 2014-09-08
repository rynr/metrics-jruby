module MetricsJruby
  module Version
    JAVA_VERSION = '3.1.0'
    GEM_VERSION = '2'

    def self.version
      "#{JAVA_VERSION}.#{GEM_VERSION}"
    end
  end
end
