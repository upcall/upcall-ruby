# SwaggerClient::QuestionsApi

All URIs are relative to *https://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_campaign_questions**](QuestionsApi.md#fetch_campaign_questions) | **GET** /campaigns/{id}/questions | Get campaign&#39;s questions


# **fetch_campaign_questions**
> InlineResponse20010 fetch_campaign_questions(id, opts)

Get campaign's questions

Fetching questions for campaign

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::QuestionsApi.new

id = "id_example" # String | ID of campaign

opts = { 
  limit: 56, # Integer | Amount of records to return. 25 by default.
  start_id: 56, # Integer | Object ID to fetch next page
  end_id: 56 # Integer | Object ID to fetch previous page
}

begin
  #Get campaign's questions
  result = api_instance.fetch_campaign_questions(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling QuestionsApi->fetch_campaign_questions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of campaign | 
 **limit** | **Integer**| Amount of records to return. 25 by default. | [optional] 
 **start_id** | **Integer**| Object ID to fetch next page | [optional] 
 **end_id** | **Integer**| Object ID to fetch previous page | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



