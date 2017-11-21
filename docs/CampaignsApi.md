# Upcall::CampaignsApi

All URIs are relative to *https://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_campaign**](CampaignsApi.md#create_campaign) | **POST** /campaigns | Create a new campaign
[**delete_campaign**](CampaignsApi.md#delete_campaign) | **DELETE** /campaigns/{id} | Delete a campaign
[**fetch_campaign**](CampaignsApi.md#fetch_campaign) | **GET** /campaigns/{id} | Get a specific campaign
[**fetch_campaigns**](CampaignsApi.md#fetch_campaigns) | **GET** /campaigns | Get all campaigns
[**update_campaign**](CampaignsApi.md#update_campaign) | **PATCH** /campaigns/{id} | Update a campaign


# **create_campaign**
> InlineResponse2001 create_campaign(campaign)

Create a new campaign

Create campaign

### Example
```ruby
# load the gem
require 'upcall'

api_instance = Upcall::CampaignsApi.new

campaign = Upcall::Campaign.new # Campaign | Campaign data


begin
  #Create a new campaign
  result = api_instance.create_campaign(campaign)
  p result
rescue Upcall::ApiError => e
  puts "Exception when calling CampaignsApi->create_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign** | [**Campaign**](Campaign.md)| Campaign data | 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_campaign**
> delete_campaign(id)

Delete a campaign

Delete campaign

### Example
```ruby
# load the gem
require 'upcall'

api_instance = Upcall::CampaignsApi.new

id = "id_example" # String | ID of campaign


begin
  #Delete a campaign
  api_instance.delete_campaign(id)
rescue Upcall::ApiError => e
  puts "Exception when calling CampaignsApi->delete_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of campaign | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fetch_campaign**
> InlineResponse2001 fetch_campaign(id)

Get a specific campaign

Fetch a campaign

### Example
```ruby
# load the gem
require 'upcall'

api_instance = Upcall::CampaignsApi.new

id = "id_example" # String | ID of campaign


begin
  #Get a specific campaign
  result = api_instance.fetch_campaign(id)
  p result
rescue Upcall::ApiError => e
  puts "Exception when calling CampaignsApi->fetch_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of campaign | 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fetch_campaigns**
> InlineResponse200 fetch_campaigns(opts)

Get all campaigns

Fetch campaigns

### Example
```ruby
# load the gem
require 'upcall'

api_instance = Upcall::CampaignsApi.new

opts = { 
  limit: 56, # Integer | Amount of records to return. 25 by default.
  start_id: 56, # Integer | Object ID to fetch next page
  end_id: 56 # Integer | Object ID to fetch previous page
  name: "name_example", # String | Filter. Filter collection by name
  status: "status_example", # String | Filter. Filter collection by status
  language: "language_example", # String | Filter. Filter collection by language
  min_start_date: Date.parse("2013-10-20"), # Date | Filter. Format: YYYY-MM-DD. Filter collection by min_start_date, required max_start_date too.
  max_start_date: Date.parse("2013-10-20"), # Date | Filter. Format: YYYY-MM-DD. Filter collection by max_start_date, required mix_start_date too.
  min_created_datetime: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Filter. Format: YYYY-MM-DDTHH:MM:SS. Filter collection by min_created_datetime, required max_created_datetime too.
  max_created_datetime: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Filter. Format: YYYY-MM-DDTHH:MM:SS. Filter collection by max_created_datetime, required min_created_datetime too.
  min_updated_datetime: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Filter. Format: YYYY-MM-DDTHH:MM:SS. Filter collection by min_updated_datetime, required max_updated_datetime too.
  max_updated_datetime: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Filter. Format: YYYY-MM-DDTHH:MM:SS. Filter collection by max_updated_datetime, required min_updated_datetime too.
  sort: "sort_example" # String | Sort field. Available fields: name, status, kind, created_at, start_date
}

begin
  #Get all campaigns
  result = api_instance.fetch_campaigns(opts)
  p result
rescue Upcall::ApiError => e
  puts "Exception when calling CampaignsApi->fetch_campaigns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Amount of records to return. 25 by default. | [optional] 
 **start_id** | **Integer**| Object ID to fetch next page | [optional] 
 **end_id** | **Integer**| Object ID to fetch previous page | [optional] 
 **name** | **String**| Filter. Filter collection by name | [optional] 
 **status** | **String**| Filter. Filter collection by status | [optional] 
 **language** | **String**| Filter. Filter collection by language | [optional] 
 **min_start_date** | **Date**| Filter. Format: YYYY-MM-DD. Filter collection by min_start_date, required max_start_date too. | [optional] 
 **max_start_date** | **Date**| Filter. Format: YYYY-MM-DD. Filter collection by max_start_date, required mix_start_date too. | [optional] 
 **min_created_datetime** | **DateTime**| Filter. Format: YYYY-MM-DDTHH:MM:SS. Filter collection by min_created_datetime, required max_created_datetime too. | [optional] 
 **max_created_datetime** | **DateTime**| Filter. Format: YYYY-MM-DDTHH:MM:SS. Filter collection by max_created_datetime, required min_created_datetime too. | [optional] 
 **min_updated_datetime** | **DateTime**| Filter. Format: YYYY-MM-DDTHH:MM:SS. Filter collection by min_updated_datetime, required max_updated_datetime too. | [optional] 
 **max_updated_datetime** | **DateTime**| Filter. Format: YYYY-MM-DDTHH:MM:SS. Filter collection by max_updated_datetime, required min_updated_datetime too. | [optional] 
 **sort** | **String**| Sort field. Available fields: name, status, kind, created_at, start_date | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_campaign**
> InlineResponse2001 update_campaign(id, campaign)

Update a campaign

Update campaign

### Example
```ruby
# load the gem
require 'upcall'

api_instance = Upcall::CampaignsApi.new

id = "id_example" # String | ID of campaign

campaign = Upcall::Campaign1.new # Campaign1 | Campaign data


begin
  #Update a campaign
  result = api_instance.update_campaign(id, campaign)
  p result
rescue Upcall::ApiError => e
  puts "Exception when calling CampaignsApi->update_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of campaign | 
 **campaign** | [**Campaign1**](Campaign1.md)| Campaign data | 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



