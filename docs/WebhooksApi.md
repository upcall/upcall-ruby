# Upcall::WebhooksApi

All URIs are relative to *https://api.upcall.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_webhook**](WebhooksApi.md#create_webhook) | **POST** /webhooks | Create a new webhook
[**delete_webhook**](WebhooksApi.md#delete_webhook) | **DELETE** /webhooks/{id} | Delete a webhook
[**fetch_webhook**](WebhooksApi.md#fetch_webhook) | **GET** /webhooks/{id} | Get a specific webhook
[**fetch_webhooks**](WebhooksApi.md#fetch_webhooks) | **GET** /webhooks | Get all webhooks
[**update_webhook**](WebhooksApi.md#update_webhook) | **PATCH** /webhooks/{id} | Update a webhook


# **create_webhook**
> InlineResponse2008 create_webhook(webhook)

Create a new webhook

Create webhook

### Example
```ruby
# load the gem
require 'upcall'

api_instance = Upcall::WebhooksApi.new

webhook = Upcall::Webhook.new # Webhook | Webhook data


begin
  #Create a new webhook
  result = api_instance.create_webhook(webhook)
  p result
rescue Upcall::ApiError => e
  puts "Exception when calling WebhooksApi->create_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook** | [**Webhook**](Webhook.md)| Webhook data | 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_webhook**
> delete_webhook(id)

Delete a webhook

Delete webhook

### Example
```ruby
# load the gem
require 'upcall'

api_instance = Upcall::WebhooksApi.new

id = "id_example" # String | ID of webhook


begin
  #Delete a webhook
  api_instance.delete_webhook(id)
rescue Upcall::ApiError => e
  puts "Exception when calling WebhooksApi->delete_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of webhook | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fetch_webhook**
> InlineResponse2008 fetch_webhook(id)

Get a specific webhook

Fetch webhook

### Example
```ruby
# load the gem
require 'upcall'

api_instance = Upcall::WebhooksApi.new

id = "id_example" # String | ID of webhook


begin
  #Get a specific webhook
  result = api_instance.fetch_webhook(id)
  p result
rescue Upcall::ApiError => e
  puts "Exception when calling WebhooksApi->fetch_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of webhook | 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fetch_webhooks**
> InlineResponse2007 fetch_webhooks(opts)

Get all webhooks

Fetch webhooks

### Example
```ruby
# load the gem
require 'upcall'

api_instance = Upcall::WebhooksApi.new

opts = { 
  limit: 56, # Integer | Amount of records to return. 25 by default.
  start_id: 56, # Integer | Object ID to fetch next page
  end_id: 56 # Integer | Object ID to fetch previous page
  url: "url_example", # String | Filter. Filter collection by url
  kind: "kind_example", # String | Filter. Filter collection by kind
  sort: "sort_example" # String | Sort field. Available fields: url, kind
}

begin
  #Get all webhooks
  result = api_instance.fetch_webhooks(opts)
  p result
rescue Upcall::ApiError => e
  puts "Exception when calling WebhooksApi->fetch_webhooks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Amount of records to return. 25 by default. | [optional] 
 **start_id** | **Integer**| Object ID to fetch next page | [optional] 
 **end_id** | **Integer**| Object ID to fetch previous page | [optional] 
 **url** | **String**| Filter. Filter collection by url | [optional] 
 **kind** | **String**| Filter. Filter collection by kind | [optional] 
 **sort** | **String**| Sort field. Available fields: url, kind | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_webhook**
> InlineResponse2008 update_webhook(id, webhook)

Update a webhook

Update webhook

### Example
```ruby
# load the gem
require 'upcall'

api_instance = Upcall::WebhooksApi.new

id = "id_example" # String | ID of webhook

webhook = Upcall::Webhook1.new # Webhook1 | Webhook data


begin
  #Update a webhook
  result = api_instance.update_webhook(id, webhook)
  p result
rescue Upcall::ApiError => e
  puts "Exception when calling WebhooksApi->update_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of webhook | 
 **webhook** | [**Webhook1**](Webhook1.md)| Webhook data | 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



