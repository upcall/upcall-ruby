# SwaggerClient::ContactsApi

All URIs are relative to *http://null/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_contact**](ContactsApi.md#create_contact) | **POST** /campaigns/{campaign_id}/contacts | 
[**fetch_contacts**](ContactsApi.md#fetch_contacts) | **GET** /campaigns/{campaign_id}/contacts | 


# **create_contact**
> Contact create_contact(authorization, campaign_id, contact)



Create contact for campaign

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContactsApi.new

authorization = "Token token=TYPE_YOUR_AUTH_TOKEN_HERE" # String | Authorization

campaign_id = 789 # Integer | ID of campaign

contact = SwaggerClient::ContactInput.new # ContactInput | Contact data


begin
  result = api_instance.create_contact(authorization, campaign_id, contact)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContactsApi->create_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authorization | [default to Token token&#x3D;TYPE_YOUR_AUTH_TOKEN_HERE]
 **campaign_id** | **Integer**| ID of campaign | 
 **contact** | [**ContactInput**](ContactInput.md)| Contact data | 

### Return type

[**Contact**](Contact.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fetch_contacts**
> InlineResponse200 fetch_contacts(authorization, campaign_id, opts)



Fetching contacts for campaign

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContactsApi.new

authorization = "Token token=TYPE_YOUR_AUTH_TOKEN_HERE" # String | Authorization

campaign_id = 789 # Integer | ID of campaign

opts = { 
  page_size: 56, # Integer | Pagination. Number of items. 25 by default.
  page_number: 56, # Integer | Pagination. Page number. 1 by default
  filter_last_name: "filter_last_name_example", # String | Filter. Filter collection by last_name
  filter_first_name: "filter_first_name_example", # String | Filter. Filter collection by first_name
  filter_company: "filter_company_example", # String | Filter. Filter collection by company
  filter_name: "filter_name_example", # String | Filter. Filter collection by name
  filter_field_id: "filter_field_id_example", # String | Filter. Filter collection by field_id
  filter_status: "filter_status_example", # String | Filter. Filter collection by status
  sort: "sort_example" # String | Sort field. Available fields: last_name, first_name, company, calls.status                              calls.called_at, calls.caller.user.first_name, calls.caller.user.last_name
}

begin
  result = api_instance.fetch_contacts(authorization, campaign_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContactsApi->fetch_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authorization | [default to Token token&#x3D;TYPE_YOUR_AUTH_TOKEN_HERE]
 **campaign_id** | **Integer**| ID of campaign | 
 **page_size** | **Integer**| Pagination. Number of items. 25 by default. | [optional] 
 **page_number** | **Integer**| Pagination. Page number. 1 by default | [optional] 
 **filter_last_name** | **String**| Filter. Filter collection by last_name | [optional] 
 **filter_first_name** | **String**| Filter. Filter collection by first_name | [optional] 
 **filter_company** | **String**| Filter. Filter collection by company | [optional] 
 **filter_name** | **String**| Filter. Filter collection by name | [optional] 
 **filter_field_id** | **String**| Filter. Filter collection by field_id | [optional] 
 **filter_status** | **String**| Filter. Filter collection by status | [optional] 
 **sort** | **String**| Sort field. Available fields: last_name, first_name, company, calls.status                              calls.called_at, calls.caller.user.first_name, calls.caller.user.last_name | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



