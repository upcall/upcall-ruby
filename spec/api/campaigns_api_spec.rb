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

# Unit tests for Upcall::CampaignsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CampaignsApi' do
  before do
    # run before each test
    @instance = Upcall::CampaignsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CampaignsApi' do
    it 'should create an instance of CampaignsApi' do
      expect(@instance).to be_instance_of(Upcall::CampaignsApi)
    end
  end

  # unit tests for create_campaign
  # Create a new campaign
  # Create campaign
  # @param campaign Campaign data
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2001]
  describe 'create_campaign test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_campaign
  # Delete a campaign
  # Delete campaign
  # @param id ID of campaign
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_campaign test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for fetch_campaign
  # Get a specific campaign
  # Fetch a campaign
  # @param id ID of campaign
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2001]
  describe 'fetch_campaign test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for fetch_campaigns
  # Get all campaigns
  # Fetch campaigns
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Amount of records to return. 25 by default.
  # @option opts [Integer] :start_id Object ID to fetch next page
  # @option opts [Integer] :end_id Object ID to fetch previous page
  # @option opts [String] :name Filter. Filter collection by name
  # @option opts [String] :status Filter. Filter collection by status
  # @option opts [String] :language Filter. Filter collection by language
  # @option opts [Date] :min_start_date Filter. Format: YYYY-MM-DD. Filter collection by min_start_date, required max_start_date too.
  # @option opts [Date] :max_start_date Filter. Format: YYYY-MM-DD. Filter collection by max_start_date, required mix_start_date too.
  # @option opts [DateTime] :min_created_datetime Filter. Format: YYYY-MM-DDTHH:MM:SS. Filter collection by min_created_datetime, required max_created_datetime too.
  # @option opts [DateTime] :max_created_datetime Filter. Format: YYYY-MM-DDTHH:MM:SS. Filter collection by max_created_datetime, required min_created_datetime too.
  # @option opts [DateTime] :min_updated_datetime Filter. Format: YYYY-MM-DDTHH:MM:SS. Filter collection by min_updated_datetime, required max_updated_datetime too.
  # @option opts [DateTime] :max_updated_datetime Filter. Format: YYYY-MM-DDTHH:MM:SS. Filter collection by max_updated_datetime, required min_updated_datetime too.
  # @option opts [String] :sort Sort field. Available fields: name, status, kind, created_at, start_date
  # @return [InlineResponse200]
  describe 'fetch_campaigns test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_campaign
  # Update a campaign
  # Update campaign
  # @param id ID of campaign
  # @param campaign Campaign data
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2001]
  describe 'update_campaign test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end