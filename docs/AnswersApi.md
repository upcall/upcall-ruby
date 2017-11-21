# SwaggerClient::AnswersApi

All URIs are relative to *https://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_contact_answers**](AnswersApi.md#fetch_contact_answers) | **GET** /contacts/{id}/answers | Get contact&#39;s answers
[**fetch_question_answers**](AnswersApi.md#fetch_question_answers) | **GET** /questions/{id}/answers | Get question&#39;s answers


# **fetch_contact_answers**
> InlineResponse2005 fetch_contact_answers(id, opts)

Get contact's answers

Fetching answers for contact

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AnswersApi.new

id = "id_example" # String | ID of contact

opts = { 
  limit: 56, # Integer | Amount of records to return. 25 by default.
  start_id: 56, # Integer | Object ID to fetch next page
  end_id: 56 # Integer | Object ID to fetch previous page
  result: "result_example", # String | Filter. Filter collection by result
  sort: "sort_example" # String | Sort field. Available fields: answer_type, created_at
}

begin
  #Get contact's answers
  result = api_instance.fetch_contact_answers(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AnswersApi->fetch_contact_answers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of contact | 
 **limit** | **Integer**| Amount of records to return. 25 by default. | [optional] 
 **start_id** | **Integer**| Object ID to fetch next page | [optional] 
 **end_id** | **Integer**| Object ID to fetch previous page | [optional] 
 **result** | **String**| Filter. Filter collection by result | [optional] 
 **sort** | **String**| Sort field. Available fields: answer_type, created_at | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fetch_question_answers**
> InlineResponse2005 fetch_question_answers(id, opts)

Get question's answers

Fetching answers for question

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AnswersApi.new

id = "id_example" # String | ID of question

opts = { 
  limit: 56, # Integer | Amount of records to return. 25 by default.
  start_id: 56, # Integer | Object ID to fetch next page
  end_id: 56 # Integer | Object ID to fetch previous page
  result: "result_example", # String | Filter. Filter collection by result
  sort: "sort_example" # String | Sort field. Available fields: created_at
}

begin
  #Get question's answers
  result = api_instance.fetch_question_answers(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AnswersApi->fetch_question_answers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of question | 
 **limit** | **Integer**| Amount of records to return. 25 by default. | [optional] 
 **start_id** | **Integer**| Object ID to fetch next page | [optional] 
 **end_id** | **Integer**| Object ID to fetch previous page | [optional] 
 **result** | **String**| Filter. Filter collection by result | [optional] 
 **sort** | **String**| Sort field. Available fields: created_at | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



