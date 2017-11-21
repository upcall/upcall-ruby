# SwaggerClient::ContactsApi

All URIs are relative to *https://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_contact**](ContactsApi.md#create_contact) | **POST** /campaigns/{id}/contacts | Add a contact to a campaign
[**delete_contact**](ContactsApi.md#delete_contact) | **DELETE** /contacts/{id} | Delete contact
[**fetch_contacts**](ContactsApi.md#fetch_contacts) | **GET** /campaigns/{id}/contacts | Get contacts for a campaign
[**fetch_custom_fields**](ContactsApi.md#fetch_custom_fields) | **GET** /contacts/{id}/custom_fields | Get custom fields
[**fetch_specific_contact**](ContactsApi.md#fetch_specific_contact) | **GET** /contacts/{id} | Get a specific contact
[**update_contact**](ContactsApi.md#update_contact) | **PATCH** /contacts/{id} | Update a contact


# **create_contact**
> InlineResponse2003 create_contact(id, contact, opts)

Add a contact to a campaign

Create contact for campaign

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContactsApi.new

id = "id_example" # String | ID of campaign

contact = SwaggerClient::Contact.new # Contact | Contact data

opts = { 
  custom_fields: true # BOOLEAN | If set, custom fields will be displayed in the output
}

begin
  #Add a contact to a campaign
  result = api_instance.create_contact(id, contact, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContactsApi->create_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of campaign | 
 **contact** | [**Contact**](Contact.md)| Contact data | 
 **custom_fields** | **BOOLEAN**| If set, custom fields will be displayed in the output | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_contact**
> delete_contact(id)

Delete contact

Delete contact

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContactsApi.new

id = "id_example" # String | ID of contact to delete


begin
  #Delete contact
  api_instance.delete_contact(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContactsApi->delete_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of contact to delete | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fetch_contacts**
> InlineResponse2002 fetch_contacts(id, opts)

Get contacts for a campaign

Fetching contacts for campaign

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContactsApi.new

id = "id_example" # String | ID of campaign

opts = { 
  limit: 56, # Integer | Amount of records to return. 25 by default.
  start_id: 56, # Integer | Object ID to fetch next page
  end_id: 56 # Integer | Object ID to fetch previous page
  first_name: "first_name_example", # String | Filter. Filter collection by first_name
  last_name: "last_name_example", # String | Filter. Filter collection by last_name
  company: "company_example", # String | Filter. Filter collection by company
  name: "name_example", # String | Filter. Filter collection by name
  field_id: "field_id_example", # String | Filter. Filter collection by field_id
  urgency: "urgency_example", # String | Filter. Filter collection by urgency
  status: "status_example", # String | Filter. Filter collection by status
  phone: "phone_example", # String | Filter. Filter collection by phone
  email: "email_example", # String | Filter. Filter collection by email
  sort: "sort_example", # String | Sort field. Available fields: last_name, first_name, company, calls.status                              calls.called_at, calls.caller.user.first_name, calls.caller.user.last_name, urgency
  custom_fields: true, # BOOLEAN | If set, custom fields will be displayed in the output
  answers: true # BOOLEAN | If set, question/answer pairs will be displayed in the output
}

begin
  #Get contacts for a campaign
  result = api_instance.fetch_contacts(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContactsApi->fetch_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of campaign | 
 **limit** | **Integer**| Amount of records to return. 25 by default. | [optional] 
 **start_id** | **Integer**| Object ID to fetch next page | [optional] 
 **end_id** | **Integer**| Object ID to fetch previous page | [optional] 
 **first_name** | **String**| Filter. Filter collection by first_name | [optional] 
 **last_name** | **String**| Filter. Filter collection by last_name | [optional] 
 **company** | **String**| Filter. Filter collection by company | [optional] 
 **name** | **String**| Filter. Filter collection by name | [optional] 
 **field_id** | **String**| Filter. Filter collection by field_id | [optional] 
 **urgency** | **String**| Filter. Filter collection by urgency | [optional] 
 **status** | **String**| Filter. Filter collection by status | [optional] 
 **phone** | **String**| Filter. Filter collection by phone | [optional] 
 **email** | **String**| Filter. Filter collection by email | [optional] 
 **sort** | **String**| Sort field. Available fields: last_name, first_name, company, calls.status                              calls.called_at, calls.caller.user.first_name, calls.caller.user.last_name, urgency | [optional] 
 **custom_fields** | **BOOLEAN**| If set, custom fields will be displayed in the output | [optional] 
 **answers** | **BOOLEAN**| If set, question/answer pairs will be displayed in the output | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fetch_custom_fields**
> InlineResponse2006 fetch_custom_fields(id, opts)

Get custom fields

Fetching custom fields for contact

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContactsApi.new

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
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContactsApi->fetch_custom_fields: #{e}"
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



# **fetch_specific_contact**
> InlineResponse2003 fetch_specific_contact(id, opts)

Get a specific contact

Fetch specific contact

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContactsApi.new

id = "id_example" # String | ID of contact to fetch

opts = { 
  custom_fields: true # BOOLEAN | If set, custom fields will be displayed in the output
}

begin
  #Get a specific contact
  result = api_instance.fetch_specific_contact(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContactsApi->fetch_specific_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of contact to fetch | 
 **custom_fields** | **BOOLEAN**| If set, custom fields will be displayed in the output | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_contact**
> InlineResponse2003 update_contact(id, contact, opts)

Update a contact

Update contact

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ContactsApi.new

id = "id_example" # String | ID of contact to update

contact = SwaggerClient::Contact1.new # Contact1 | Contact data

opts = { 
  custom_fields: true # BOOLEAN | If set, custom fields will be displayed in the output
}

begin
  #Update a contact
  result = api_instance.update_contact(id, contact, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ContactsApi->update_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of contact to update | 
 **contact** | [**Contact1**](Contact1.md)| Contact data | 
 **custom_fields** | **BOOLEAN**| If set, custom fields will be displayed in the output | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



