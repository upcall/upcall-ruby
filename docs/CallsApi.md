# Upcall::CallsApi

All URIs are relative to *https://api.upcall.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_calls**](CallsApi.md#fetch_calls) | **GET** /calls | Get all calls
[**fetch_calls_for_campaign**](CallsApi.md#fetch_calls_for_campaign) | **GET** /campaigns/{id}/calls | Get all calls for a campaign


# **fetch_calls**
> InlineResponse2004 fetch_calls(opts)

Get all calls

Fetching calls for company

### Example
```ruby
# load the gem
require 'upcall'
# setup authorization
Upcall.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Upcall::CallsApi.new

opts = { 
  limit: 56, # Integer | Amount of records to return. 25 by default.
  start_id: 56, # Integer | Object ID to fetch next page
  end_id: 56 # Integer | Object ID to fetch previous page
  status: "status_example", # String | Filter. Filter collection by status
  caller_name: "caller_name_example", # String | Filter. Filter collection by caller name
  sort: "sort_example" # String | Sort field. Available fields: status, called_at
}

begin
  #Get all calls
  result = api_instance.fetch_calls(opts)
  p result
rescue Upcall::ApiError => e
  puts "Exception when calling CallsApi->fetch_calls: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Amount of records to return. 25 by default. | [optional] 
 **start_id** | **Integer**| Object ID to fetch next page | [optional] 
 **end_id** | **Integer**| Object ID to fetch previous page | [optional] 
 **status** | **String**| Filter. Filter collection by status | [optional] 
 **caller_name** | **String**| Filter. Filter collection by caller name | [optional] 
 **sort** | **String**| Sort field. Available fields: status, called_at | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fetch_calls_for_campaign**
> InlineResponse2004 fetch_calls_for_campaign(id, opts)

Get all calls for a campaign

Fetching calls for campaign

### Example
```ruby
# load the gem
require 'upcall'
# setup authorization
Upcall.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Upcall::CallsApi.new

id = "id_example" # String | ID of campaign

opts = { 
  limit: 56, # Integer | Amount of records to return. 25 by default.
  start_id: 56, # Integer | Object ID to fetch next page
  end_id: 56 # Integer | Object ID to fetch previous page
  status: "status_example", # String | Filter. Filter collection by status
  caller_name: "caller_name_example", # String | Filter. Filter collection by caller name
  sort: "sort_example" # String | Sort field. Available fields: status, called_at
}

begin
  #Get all calls for a campaign
  result = api_instance.fetch_calls_for_campaign(id, opts)
  p result
rescue Upcall::ApiError => e
  puts "Exception when calling CallsApi->fetch_calls_for_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of campaign | 
 **limit** | **Integer**| Amount of records to return. 25 by default. | [optional] 
 **start_id** | **Integer**| Object ID to fetch next page | [optional] 
 **end_id** | **Integer**| Object ID to fetch previous page | [optional] 
 **status** | **String**| Filter. Filter collection by status | [optional] 
 **caller_name** | **String**| Filter. Filter collection by caller name | [optional] 
 **sort** | **String**| Sort field. Available fields: status, called_at | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



