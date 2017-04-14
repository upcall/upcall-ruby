# SwaggerClient::CallsApi

All URIs are relative to *http://null/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_calls**](CallsApi.md#fetch_calls) | **GET** /calls | 
[**fetch_calls_for_campaign**](CallsApi.md#fetch_calls_for_campaign) | **GET** /campaigns/{campaign_id}/calls | 


# **fetch_calls**
> InlineResponse2001 fetch_calls(authorization, opts)



Fetching calls for company

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CallsApi.new

authorization = "Token token=TYPE_YOUR_AUTH_TOKEN_HERE" # String | Authorization

opts = { 
  page_size: 56, # Integer | Pagination. Number of items. 25 by default.
  page_number: 56, # Integer | Pagination. Page number. 1 by default
  filter_status: "filter_status_example", # String | Filter. Filter collection by status
  filter_caller_id: "filter_caller_id_example", # String | Filter. Filter collection by caller_id
  sort: "sort_example" # String | Sort field. Available fields: status, called_at
}

begin
  result = api_instance.fetch_calls(authorization, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CallsApi->fetch_calls: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authorization | [default to Token token&#x3D;TYPE_YOUR_AUTH_TOKEN_HERE]
 **page_size** | **Integer**| Pagination. Number of items. 25 by default. | [optional] 
 **page_number** | **Integer**| Pagination. Page number. 1 by default | [optional] 
 **filter_status** | **String**| Filter. Filter collection by status | [optional] 
 **filter_caller_id** | **String**| Filter. Filter collection by caller_id | [optional] 
 **sort** | **String**| Sort field. Available fields: status, called_at | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fetch_calls_for_campaign**
> InlineResponse2001 fetch_calls_for_campaign(authorization, opts)



Fetching calls for campaign

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CallsApi.new

authorization = "Token token=TYPE_YOUR_AUTH_TOKEN_HERE" # String | Authorization

opts = { 
  page_size: 56, # Integer | Pagination. Number of items. 25 by default.
  page_number: 56, # Integer | Pagination. Page number. 1 by default
  filter_status: "filter_status_example", # String | Filter. Filter collection by status
  filter_caller_id: "filter_caller_id_example", # String | Filter. Filter collection by caller_id
  sort: "sort_example" # String | Sort field. Available fields: status, called_at
}

begin
  result = api_instance.fetch_calls_for_campaign(authorization, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CallsApi->fetch_calls_for_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authorization | [default to Token token&#x3D;TYPE_YOUR_AUTH_TOKEN_HERE]
 **page_size** | **Integer**| Pagination. Number of items. 25 by default. | [optional] 
 **page_number** | **Integer**| Pagination. Page number. 1 by default | [optional] 
 **filter_status** | **String**| Filter. Filter collection by status | [optional] 
 **filter_caller_id** | **String**| Filter. Filter collection by caller_id | [optional] 
 **sort** | **String**| Sort field. Available fields: status, called_at | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



