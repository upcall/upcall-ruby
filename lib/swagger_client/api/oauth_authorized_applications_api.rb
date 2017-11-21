=begin
#Upcall API

#A RESTful API (json) to manage your outbound sales campaigns.

OpenAPI spec version: 2
Contact: support@upcall.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class OauthAuthorizedApplicationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Fetch Oauth authorized applications
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2009]
    def fetch_oauth_authorized_applications(opts = {})
      data, _status_code, _headers = fetch_oauth_authorized_applications_with_http_info(opts)
      return data
    end

    # 
    # Fetch Oauth authorized applications
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2009, Fixnum, Hash)>] InlineResponse2009 data, response status code and response headers
    def fetch_oauth_authorized_applications_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OauthAuthorizedApplicationsApi.fetch_oauth_authorized_applications ..."
      end
      # resource path
      local_var_path = "/oauth/authorized_applications".sub('{format}','json')

      # query parameters
      query_params = {}

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
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OauthAuthorizedApplicationsApi#fetch_oauth_authorized_applications\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Revoke Oauth authorized application
    # @param id ID of authorized application
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def revoke_oauth_authorized_application(id, opts = {})
      revoke_oauth_authorized_application_with_http_info(id, opts)
      return nil
    end

    # 
    # Revoke Oauth authorized application
    # @param id ID of authorized application
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def revoke_oauth_authorized_application_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OauthAuthorizedApplicationsApi.revoke_oauth_authorized_application ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling OauthAuthorizedApplicationsApi.revoke_oauth_authorized_application" if id.nil?
      # resource path
      local_var_path = "/oauth/authorized_applications/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OauthAuthorizedApplicationsApi#revoke_oauth_authorized_application\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
