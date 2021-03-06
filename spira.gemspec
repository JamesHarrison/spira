#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-
$:.unshift File.expand_path('../lib', __FILE__)
require 'spira/version'


Gem::Specification.new do |gem|
  gem.version            = Spira::VERSION.to_s
  gem.date               = Time.now.strftime('%Y-%m-%d')

  gem.name               = 'spira'
  gem.homepage           = 'http://ruby-rdf.github.io/spira/'
  gem.license            = 'Public Domain' if gem.respond_to?(:license=)
  gem.summary            = 'A framework for using the information in RDF.rb repositories as model objects.'
  gem.description        = 'Spira is a framework for using the information in RDF.rb repositories as model objects.'
  gem.rubyforge_project  = 'spira'

  gem.authors            = ['Ben Lavender']
  gem.email              = 'blavender@gmail.com'

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(CHANGES.md AUTHORS README.md UNLICENSE VERSION) + Dir.glob('lib/**/*.rb')
  gem.bindir             = %w(bin)
  gem.executables        = %w()
  gem.default_executable = gem.executables.first
  gem.require_paths      = %w(lib)
  gem.extensions         = %w()
  gem.test_files         = %w()
  gem.has_rdoc           = false
  gem.has_yardoc         = true if gem.respond_to?(:has_yardoc)

  gem.required_ruby_version      = '>= 1.9.2'
  gem.requirements               = []

  gem.add_development_dependency 'bundler',        '~> 1.0'
  gem.add_development_dependency 'rdf-spec',       '~> 1.1'
  gem.add_development_dependency 'rspec',          '~> 2.14.0'
  gem.add_development_dependency 'yard' ,          '~> 0.8.3'
  gem.add_development_dependency 'redcarpet' ,     '~> 2.2.2' unless RUBY_ENGINE == 'jruby'
  gem.add_development_dependency 'guard',          '~> 1.2.3'
  gem.add_development_dependency 'guard-rspec',    '~> 1.1.0'
  gem.add_development_dependency 'guard-ctags-bundler', '~> 0.1.1'

  gem.add_runtime_dependency     'rdf',            '~> 1.1'
  gem.add_runtime_dependency     'rdf-isomorphic', '~> 1.1'
  gem.add_runtime_dependency     'promise',        '~> 0.3.0'
  gem.add_runtime_dependency     'activemodel',    '>= 4'
  gem.add_runtime_dependency     'activesupport',  '>= 4'

  # Rubinius has it's own dependencies
  if RUBY_ENGINE == "rbx" && RUBY_VERSION >= "2.1.0"
    #gem.add_runtime_dependency     "rubysl-bigdecimal"
    #gem.add_runtime_dependency     "rubysl-digest"
    #gem.add_runtime_dependency     "rubysl-enumerator"
    gem.add_runtime_dependency     "rubysl-yaml"
    gem.add_runtime_dependency     "psych"
    #gem.add_development_dependency "rubysl-open-uri"
    gem.add_development_dependency "rubysl-prettyprint"
  end

  gem.post_install_message       = nil
end
