module MetricsJruby
  module Version
    JAVA_VERSION = '3.0.2'
    GEM_VERSION = '2'

    def self.version
      "#{JAVA_VERSION}.#{GEM_VERSION}"
    end
  end
end
