require 'minitest/autorun'
require 'test/unit'
require 'metrics_jruby'

class MetricsJrubyTest < Test::Unit::TestCase

  def test_metric_registry_can_be_initialized
    Java::ComCodahaleMetricsMetricRegistry.new
  end

end
