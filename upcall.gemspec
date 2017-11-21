# -*- encoding: utf-8 -*-
#
=begin
#Upcall API

#A RESTful API (json) to manage your outbound sales campaigns.

OpenAPI spec version: 2
Contact: support@upcall.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

$:.push File.expand_path("../lib", __FILE__)
require "upcall/version"

Gem::Specification.new do |s|
  s.name        = "upcall"
  s.version     = Upcall::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = [""]
  s.email       = ["support [at] upcall.com"]
  s.homepage    = "https://www.upcall.com"
  s.summary     = "A ruby wrapper for the Upcall APIs. Upcall provides human-powered calls on demand."
  s.description = "This gem maps to a Upcall API"
  s.license     = "proprietary"
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 1.8', '>= 1.8.3'

  s.add_development_dependency 'rspec', '~> 3.4', '>= 3.4.0'
  s.add_development_dependency 'vcr', '~> 3.0', '>= 3.0.1'
  s.add_development_dependency 'webmock', '~> 1.24', '>= 1.24.3'
  s.add_development_dependency 'autotest', '~> 4.4', '>= 4.4.6'
  s.add_development_dependency 'autotest-rails-pure', '~> 4.1', '>= 4.1.2'
  s.add_development_dependency 'autotest-growl', '~> 0.2', '>= 0.2.16'
  s.add_development_dependency 'autotest-fsevent', '~> 0.2', '>= 0.2.11'

  s.files         = `find *`.split("\n").uniq.sort.select{|f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
