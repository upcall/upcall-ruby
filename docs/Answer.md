# SwaggerClient::Answer

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**question** | **String** | Question text | [optional] 
**answer_type** | **String** | the type of response allowed for the question | [optional] 
**result** | **String** | The answer to the question. If question.response_type nps, stars, multiple_checkbox, multiple_radio then result will contain all selected options separated by comma. | [optional] 
**contact_id** | **String** |  | [optional] 
**comment** | **String** | The comment to the answer | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**contact** | [**ContactAttribute**](ContactAttribute.md) |  | [optional] 


