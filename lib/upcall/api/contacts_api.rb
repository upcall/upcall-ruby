=begin
#Upcall API

#A RESTful API (json) to manage your outbound sales campaigns.

OpenAPI spec version: 2
Contact: support@upcall.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module Upcall
  class ContactsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add a contact to a campaign
    # Create contact for campaign
    # @param id ID of campaign
    # @param contact Contact data
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :custom_fields If set, custom fields will be displayed in the output
    # @return [InlineResponse2003]
    def create_contact(id, contact, opts = {})
      data, _status_code, _headers = create_contact_with_http_info(id, contact, opts)
      return data
    end

    # Add a contact to a campaign
    # Create contact for campaign
    # @param id ID of campaign
    # @param contact Contact data
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :custom_fields If set, custom fields will be displayed in the output
    # @return [Array<(InlineResponse2003, Fixnum, Hash)>] InlineResponse2003 data, response status code and response headers
    def create_contact_with_http_info(id, contact, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactsApi.create_contact ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactsApi.create_contact"
      end
      # verify the required parameter 'contact' is set
      if @api_client.config.client_side_validation && contact.nil?
        fail ArgumentError, "Missing the required parameter 'contact' when calling ContactsApi.create_contact"
      end
      # resource path
      local_var_path = "/campaigns/{id}/contacts".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'custom_fields'] = opts[:'custom_fields'] if !opts[:'custom_fields'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(contact)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2003')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#create_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete contact
    # Delete contact
    # @param id ID of contact to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_contact(id, opts = {})
      delete_contact_with_http_info(id, opts)
      return nil
    end

    # Delete contact
    # Delete contact
    # @param id ID of contact to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_contact_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactsApi.delete_contact ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactsApi.delete_contact"
      end
      # resource path
      local_var_path = "/contacts/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ContactsApi#delete_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get contacts for a campaign
    # Fetching contacts for campaign
    # @param id ID of campaign
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Amount of records to return. 25 by default.
    # @option opts [Integer] :start_id Object ID to fetch next page
    # @option opts [Integer] :end_id Object ID to fetch previous page
    # @option opts [String] :first_name Filter. Filter collection by first_name
    # @option opts [String] :last_name Filter. Filter collection by last_name
    # @option opts [String] :company Filter. Filter collection by company
    # @option opts [String] :name Filter. Filter collection by name
    # @option opts [String] :field_id Filter. Filter collection by field_id
    # @option opts [String] :urgency Filter. Filter collection by urgency
    # @option opts [String] :status Filter. Filter collection by status
    # @option opts [String] :phone Filter. Filter collection by phone
    # @option opts [String] :email Filter. Filter collection by email
    # @option opts [String] :sort Sort field. Available fields: last_name, first_name, company, calls.status                              calls.called_at, calls.caller.user.first_name, calls.caller.user.last_name, urgency
    # @option opts [BOOLEAN] :custom_fields If set, custom fields will be displayed in the output
    # @option opts [BOOLEAN] :answers If set, question/answer pairs will be displayed in the output
    # @return [InlineResponse2002]
    def fetch_contacts(id, opts = {})
      data, _status_code, _headers = fetch_contacts_with_http_info(id, opts)
      return data
    end

    # Get contacts for a campaign
    # Fetching contacts for campaign
    # @param id ID of campaign
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Amount of records to return. 25 by default.
    # @option opts [Integer] :start_id Object ID to fetch next page
    # @option opts [Integer] :end_id Object ID to fetch previous page
    # @option opts [String] :first_name Filter. Filter collection by first_name
    # @option opts [String] :last_name Filter. Filter collection by last_name
    # @option opts [String] :company Filter. Filter collection by company
    # @option opts [String] :name Filter. Filter collection by name
    # @option opts [String] :field_id Filter. Filter collection by field_id
    # @option opts [String] :urgency Filter. Filter collection by urgency
    # @option opts [String] :status Filter. Filter collection by status
    # @option opts [String] :phone Filter. Filter collection by phone
    # @option opts [String] :email Filter. Filter collection by email
    # @option opts [String] :sort Sort field. Available fields: last_name, first_name, company, calls.status                              calls.called_at, calls.caller.user.first_name, calls.caller.user.last_name, urgency
    # @option opts [BOOLEAN] :custom_fields If set, custom fields will be displayed in the output
    # @option opts [BOOLEAN] :answers If set, question/answer pairs will be displayed in the output
    # @return [Array<(InlineResponse2002, Fixnum, Hash)>] InlineResponse2002 data, response status code and response headers
    def fetch_contacts_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactsApi.fetch_contacts ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactsApi.fetch_contacts"
      end
      # resource path
      local_var_path = "/campaigns/{id}/contacts".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'start_id'] = opts[:'start_id'] if !opts[:'start_id'].nil?
      query_params[:'end_id'] = opts[:'end_id'] if !opts[:'end_id'].nil?
      query_params[:'first_name'] = opts[:'first_name'] if !opts[:'first_name'].nil?
      query_params[:'last_name'] = opts[:'last_name'] if !opts[:'last_name'].nil?
      query_params[:'company'] = opts[:'company'] if !opts[:'company'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'field_id'] = opts[:'field_id'] if !opts[:'field_id'].nil?
      query_params[:'urgency'] = opts[:'urgency'] if !opts[:'urgency'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'phone'] = opts[:'phone'] if !opts[:'phone'].nil?
      query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'custom_fields'] = opts[:'custom_fields'] if !opts[:'custom_fields'].nil?
      query_params[:'answers'] = opts[:'answers'] if !opts[:'answers'].nil?

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
        :return_type => 'InlineResponse2002')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#fetch_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
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
        @api_client.config.logger.debug "Calling API: ContactsApi.fetch_custom_fields ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactsApi.fetch_custom_fields"
      end
      # resource path
      local_var_path = "/contacts/{id}/custom_fields".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ContactsApi#fetch_custom_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a specific contact
    # Fetch specific contact
    # @param id ID of contact to fetch
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :custom_fields If set, custom fields will be displayed in the output
    # @return [InlineResponse2003]
    def fetch_specific_contact(id, opts = {})
      data, _status_code, _headers = fetch_specific_contact_with_http_info(id, opts)
      return data
    end

    # Get a specific contact
    # Fetch specific contact
    # @param id ID of contact to fetch
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :custom_fields If set, custom fields will be displayed in the output
    # @return [Array<(InlineResponse2003, Fixnum, Hash)>] InlineResponse2003 data, response status code and response headers
    def fetch_specific_contact_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactsApi.fetch_specific_contact ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactsApi.fetch_specific_contact"
      end
      # resource path
      local_var_path = "/contacts/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'custom_fields'] = opts[:'custom_fields'] if !opts[:'custom_fields'].nil?

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
        :return_type => 'InlineResponse2003')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#fetch_specific_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a contact
    # Update contact
    # @param id ID of contact to update
    # @param contact Contact data
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :custom_fields If set, custom fields will be displayed in the output
    # @return [InlineResponse2003]
    def update_contact(id, contact, opts = {})
      data, _status_code, _headers = update_contact_with_http_info(id, contact, opts)
      return data
    end

    # Update a contact
    # Update contact
    # @param id ID of contact to update
    # @param contact Contact data
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :custom_fields If set, custom fields will be displayed in the output
    # @return [Array<(InlineResponse2003, Fixnum, Hash)>] InlineResponse2003 data, response status code and response headers
    def update_contact_with_http_info(id, contact, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactsApi.update_contact ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactsApi.update_contact"
      end
      # verify the required parameter 'contact' is set
      if @api_client.config.client_side_validation && contact.nil?
        fail ArgumentError, "Missing the required parameter 'contact' when calling ContactsApi.update_contact"
      end
      # resource path
      local_var_path = "/contacts/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'custom_fields'] = opts[:'custom_fields'] if !opts[:'custom_fields'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(contact)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2003')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#update_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
