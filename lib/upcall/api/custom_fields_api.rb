=begin
#Upcall API

#A RESTful API (json) to manage your outbound sales campaigns.

OpenAPI spec version: 2
Contact: support@upcall.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module Upcall
  class CustomFieldsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get custom fields
    # Fetching custom fields for contact
    # @param id ID of contact
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Amount of records to return. 25 by default.
    # @option opts [Integer] :start_id Object ID to fetch next page
    # @option opts [Integer] :end_id Object ID to fetch previous page
    # @return [InlineResponse2006]
    def fetch_custom_fields(id, opts = {})
      data, _status_code, _headers = fetch_custom_fields_with_http_info(id, opts)
      return data
    end

    # Get custom fields
    # Fetching custom fields for contact
    # @param id ID of contact
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Amount of records to return. 25 by default.
    # @option opts [Integer] :start_id Object ID to fetch next page
    # @option opts [Integer] :end_id Object ID to fetch previous page
    # @return [Array<(InlineResponse2006, Fixnum, Hash)>] InlineResponse2006 data, response status code and response headers
    def fetch_custom_fields_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomFieldsApi.fetch_custom_fields ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CustomFieldsApi.fetch_custom_fields" if id.nil?
      # resource path
      local_var_path = "/contacts/{id}/custom_fields".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'start_id'] = opts[:'start_id'] if !opts[:'start_id'].nil?
      query_params[:'end_id'] = opts[:'end_id'] if !opts[:'end_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2006')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomFieldsApi#fetch_custom_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
