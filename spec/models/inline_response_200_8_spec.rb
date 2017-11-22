=begin
#Upcall API

#A RESTful API (json) to manage your human-powered outbound call campaigns.

OpenAPI spec version: 2
Contact: support@upcall.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Upcall::InlineResponse2008
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InlineResponse2008' do
  before do
    # run before each test
    @instance = Upcall::InlineResponse2008.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineResponse2008' do
    it 'should create an instance of InlineResponse2008' do
      expect(@instance).to be_instance_of(Upcall::InlineResponse2008)
    end
  end
  describe 'test attribute "webhook"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
