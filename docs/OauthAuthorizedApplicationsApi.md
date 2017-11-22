# Upcall::OauthAuthorizedApplicationsApi

All URIs are relative to *https://api.upcall.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch_oauth_authorized_applications**](OauthAuthorizedApplicationsApi.md#fetch_oauth_authorized_applications) | **GET** /oauth/authorized_applications | 
[**revoke_oauth_authorized_application**](OauthAuthorizedApplicationsApi.md#revoke_oauth_authorized_application) | **DELETE** /oauth/authorized_applications/{id} | 


# **fetch_oauth_authorized_applications**
> InlineResponse2009 fetch_oauth_authorized_applications



Fetch Oauth authorized applications

### Example
```ruby
# load the gem
require 'upcall'
# setup authorization
Upcall.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Upcall::OauthAuthorizedApplicationsApi.new

begin
  result = api_instance.fetch_oauth_authorized_applications
  p result
rescue Upcall::ApiError => e
  puts "Exception when calling OauthAuthorizedApplicationsApi->fetch_oauth_authorized_applications: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **revoke_oauth_authorized_application**
> revoke_oauth_authorized_application(id)



Revoke Oauth authorized application

### Example
```ruby
# load the gem
require 'upcall'
# setup authorization
Upcall.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Upcall::OauthAuthorizedApplicationsApi.new

id = "id_example" # String | ID of authorized application


begin
  api_instance.revoke_oauth_authorized_application(id)
rescue Upcall::ApiError => e
  puts "Exception when calling OauthAuthorizedApplicationsApi->revoke_oauth_authorized_application: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of authorized application | 

### Return type

nil (empty response body)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



