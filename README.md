metrics-jruby
=============

This is a wrapper to use the great java-library `metrics` with `jruby`.

To use, just add `gem 'metrics-jruby'` to your `Gemfile` and `require
'metrics_jruby'` in your initialization.  
Now you can access `Java::com.codahale.metrics.MetricRegistry` or
`Java::ComCodahaleMetrics::MetricRegistry`.

More documentation and examples will follow (hopefully).

More information on metrics, see http://metrics.dropwizard.io/.

[![Build Status](https://travis-ci.org/rynr/metrics-jruby.svg?branch=master)](https://travis-ci.org/rynr/metrics-jruby)  
[![Code Climate](https://codeclimate.com/github/rynr/metrics-jruby/badges/gpa.svg)](https://codeclimate.com/github/rynr/metrics-jruby)
