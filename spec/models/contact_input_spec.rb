=begin
#Swagger Upcall

#A public API v2

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::ContactInput
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContactInput' do
  before do
    # run before each test
    @instance = SwaggerClient::ContactInput.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContactInput' do
    it 'should create an instact of ContactInput' do
      expect(@instance).to be_instance_of(SwaggerClient::ContactInput)
    end
  end
  describe 'test attribute "contact"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
