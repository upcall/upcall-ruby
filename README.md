# upcall

Upcall - the Ruby gem for the Upcall API

A RESTful API (json) to manage your human-powered outbound call campaigns.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build upcall.gemspec
```

Then either install the gem locally:

```shell
gem install ./upcall-1.0.0.gem
```
(for development, run `gem install --dev ./upcall-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'upcall', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/upcall/upcall-ruby, then add the following in the Gemfile:

    gem 'upcall', :git => 'https://github.com/upcall/upcall-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'upcall'

api_instance = Upcall::AnswersApi.new

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
rescue Upcall::ApiError => e
  puts "Exception when calling AnswersApi->fetch_contact_answers: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.upcall.com/api/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Upcall::AnswersApi* | [**fetch_contact_answers**](docs/AnswersApi.md#fetch_contact_answers) | **GET** /contacts/{id}/answers | Get contact's answers
*Upcall::AnswersApi* | [**fetch_question_answers**](docs/AnswersApi.md#fetch_question_answers) | **GET** /questions/{id}/answers | Get question's answers
*Upcall::CallsApi* | [**fetch_calls**](docs/CallsApi.md#fetch_calls) | **GET** /calls | Get all calls
*Upcall::CallsApi* | [**fetch_calls_for_campaign**](docs/CallsApi.md#fetch_calls_for_campaign) | **GET** /campaigns/{id}/calls | Get all calls for a campaign
*Upcall::CampaignsApi* | [**create_campaign**](docs/CampaignsApi.md#create_campaign) | **POST** /campaigns | Create a new campaign
*Upcall::CampaignsApi* | [**delete_campaign**](docs/CampaignsApi.md#delete_campaign) | **DELETE** /campaigns/{id} | Delete a campaign
*Upcall::CampaignsApi* | [**fetch_campaign**](docs/CampaignsApi.md#fetch_campaign) | **GET** /campaigns/{id} | Get a specific campaign
*Upcall::CampaignsApi* | [**fetch_campaigns**](docs/CampaignsApi.md#fetch_campaigns) | **GET** /campaigns | Get all campaigns
*Upcall::CampaignsApi* | [**update_campaign**](docs/CampaignsApi.md#update_campaign) | **PATCH** /campaigns/{id} | Update a campaign
*Upcall::ContactsApi* | [**create_contact**](docs/ContactsApi.md#create_contact) | **POST** /campaigns/{id}/contacts | Add a contact to a campaign
*Upcall::ContactsApi* | [**delete_contact**](docs/ContactsApi.md#delete_contact) | **DELETE** /contacts/{id} | Delete contact
*Upcall::ContactsApi* | [**fetch_contacts**](docs/ContactsApi.md#fetch_contacts) | **GET** /campaigns/{id}/contacts | Get contacts for a campaign
*Upcall::ContactsApi* | [**fetch_custom_fields**](docs/ContactsApi.md#fetch_custom_fields) | **GET** /contacts/{id}/custom_fields | Get custom fields
*Upcall::ContactsApi* | [**fetch_specific_contact**](docs/ContactsApi.md#fetch_specific_contact) | **GET** /contacts/{id} | Get a specific contact
*Upcall::ContactsApi* | [**update_contact**](docs/ContactsApi.md#update_contact) | **PATCH** /contacts/{id} | Update a contact
*Upcall::CustomFieldsApi* | [**fetch_custom_fields**](docs/CustomFieldsApi.md#fetch_custom_fields) | **GET** /contacts/{id}/custom_fields | Get custom fields
*Upcall::OauthAuthorizedApplicationsApi* | [**fetch_oauth_authorized_applications**](docs/OauthAuthorizedApplicationsApi.md#fetch_oauth_authorized_applications) | **GET** /oauth/authorized_applications | 
*Upcall::OauthAuthorizedApplicationsApi* | [**revoke_oauth_authorized_application**](docs/OauthAuthorizedApplicationsApi.md#revoke_oauth_authorized_application) | **DELETE** /oauth/authorized_applications/{id} | 
*Upcall::QuestionsApi* | [**fetch_campaign_questions**](docs/QuestionsApi.md#fetch_campaign_questions) | **GET** /campaigns/{id}/questions | Get campaign's questions
*Upcall::WebhooksApi* | [**create_webhook**](docs/WebhooksApi.md#create_webhook) | **POST** /webhooks | Create a new webhook
*Upcall::WebhooksApi* | [**delete_webhook**](docs/WebhooksApi.md#delete_webhook) | **DELETE** /webhooks/{id} | Delete a webhook
*Upcall::WebhooksApi* | [**fetch_webhook**](docs/WebhooksApi.md#fetch_webhook) | **GET** /webhooks/{id} | Get a specific webhook
*Upcall::WebhooksApi* | [**fetch_webhooks**](docs/WebhooksApi.md#fetch_webhooks) | **GET** /webhooks | Get all webhooks
*Upcall::WebhooksApi* | [**update_webhook**](docs/WebhooksApi.md#update_webhook) | **PATCH** /webhooks/{id} | Update a webhook


## Documentation for Models

 - [Upcall::Address](docs/Address.md)
 - [Upcall::Answer](docs/Answer.md)
 - [Upcall::Call](docs/Call.md)
 - [Upcall::Campaign](docs/Campaign.md)
 - [Upcall::Campaign1](docs/Campaign1.md)
 - [Upcall::Contact](docs/Contact.md)
 - [Upcall::Contact1](docs/Contact1.md)
 - [Upcall::ContactAnswers](docs/ContactAnswers.md)
 - [Upcall::ContactAttribute](docs/ContactAttribute.md)
 - [Upcall::Error](docs/Error.md)
 - [Upcall::ErrorErrors](docs/ErrorErrors.md)
 - [Upcall::InlineResponse200](docs/InlineResponse200.md)
 - [Upcall::InlineResponse2001](docs/InlineResponse2001.md)
 - [Upcall::InlineResponse20010](docs/InlineResponse20010.md)
 - [Upcall::InlineResponse2002](docs/InlineResponse2002.md)
 - [Upcall::InlineResponse2003](docs/InlineResponse2003.md)
 - [Upcall::InlineResponse2004](docs/InlineResponse2004.md)
 - [Upcall::InlineResponse2005](docs/InlineResponse2005.md)
 - [Upcall::InlineResponse2006](docs/InlineResponse2006.md)
 - [Upcall::InlineResponse2007](docs/InlineResponse2007.md)
 - [Upcall::InlineResponse2008](docs/InlineResponse2008.md)
 - [Upcall::InlineResponse2009](docs/InlineResponse2009.md)
 - [Upcall::Keyvalue](docs/Keyvalue.md)
 - [Upcall::OauthAuthorizedApplication](docs/OauthAuthorizedApplication.md)
 - [Upcall::Question](docs/Question.md)
 - [Upcall::Webhook](docs/Webhook.md)
 - [Upcall::Webhook1](docs/Webhook1.md)


## Documentation for Authorization


### upcall_auth

- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: 
- **Scopes**: 
  - public: Read/write data

