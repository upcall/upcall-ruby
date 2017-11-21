# Upcall::CustomFieldsApi

All URIs are relative to *https://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_custom_fields**](CustomFieldsApi.md#fetch_custom_fields) | **GET** /contacts/{id}/custom_fields | Get custom fields


# **fetch_custom_fields**
> InlineResponse2006 fetch_custom_fields(id, opts)

Get custom fields

Fetching custom fields for contact

### Example
```ruby
# load the gem
require 'upcall'

api_instance = Upcall::CustomFieldsApi.new

id = "id_example" # String | ID of contact

opts = { 
  limit: 56, # Integer | Amount of records to return. 25 by default.
  start_id: 56, # Integer | Object ID to fetch next page
  end_id: 56 # Integer | Object ID to fetch previous page
}

begin
  #Get custom fields
  result = api_instance.fetch_custom_fields(id, opts)
  p result
rescue Upcall::ApiError => e
  puts "Exception when calling CustomFieldsApi->fetch_custom_fields: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of contact | 
 **limit** | **Integer**| Amount of records to return. 25 by default. | [optional] 
 **start_id** | **Integer**| Object ID to fetch next page | [optional] 
 **end_id** | **Integer**| Object ID to fetch previous page | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



