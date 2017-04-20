metrics-jruby
=============

[![Join the chat at https://gitter.im/rynr/metrics-jruby](https://badges.gitter.im/rynr/metrics-jruby.svg)](https://gitter.im/rynr/metrics-jruby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

This is a wrapper to use the great java-library `metrics` with `jruby`.

To use, just add `gem 'metrics-jruby'` to your `Gemfile` and `require
'metrics_jruby'` in your initialization.  
Now you can access `Java::com.codahale.metrics.MetricRegistry` or
`Java::ComCodahaleMetrics::MetricRegistry`.

More documentation and examples will follow (hopefully).

More information on metrics, see http://metrics.dropwizard.io/.

[![Build Status](https://travis-ci.org/rynr/metrics-jruby.svg?branch=master)](https://travis-ci.org/rynr/metrics-jruby)  

Move forward
============

If you need other packages than the core, and have a idea how to add those, please contact me via [mail](mailto:rainer.jung@gmail.com), [gitter](https://gitter.im/rynr/metrics-jruby) or create a [issue](https://github.com/rynr/metrics-jruby/issues).
