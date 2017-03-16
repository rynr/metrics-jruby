module MetricsJruby
  module Version
    JAVA_VERSION = '3.2.1'
    GEM_VERSION = '3'

    def self.version
      "#{JAVA_VERSION}.#{GEM_VERSION}"
    end
  end
end
