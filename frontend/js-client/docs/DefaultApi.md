# CivicSage.DefaultApi

All URIs are relative to *http://localhost:8080/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteChat**](DefaultApi.md#deleteChat) | **DELETE** /completions/chat | Delete a chat
[**deleteIndexedSource**](DefaultApi.md#deleteIndexedSource) | **DELETE** /sources | Delete indexed source
[**downloadFile**](DefaultApi.md#downloadFile) | **GET** /files | Download file
[**getAllIndexedSources**](DefaultApi.md#getAllIndexedSources) | **GET** /sources | Get all indexed sources
[**getChat**](DefaultApi.md#getChat) | **GET** /completions/chat | Create or retrieve a chat
[**getMetadataKeys**](DefaultApi.md#getMetadataKeys) | **GET** /system/metadata-keys | Get metadata keys
[**getSystemInfo**](DefaultApi.md#getSystemInfo) | **GET** /system/info | Get system information
[**indexFiles**](DefaultApi.md#indexFiles) | **POST** /index/file | Index new files
[**indexWebsite**](DefaultApi.md#indexWebsite) | **POST** /index/url | Index Website
[**searchFiles**](DefaultApi.md#searchFiles) | **POST** /search | Search for files
[**sendMessage**](DefaultApi.md#sendMessage) | **POST** /completions/chat | Send a message in a chat
[**submitFeedback**](DefaultApi.md#submitFeedback) | **POST** /feedback | Submit feedback
[**updateChat**](DefaultApi.md#updateChat) | **PATCH** /completions/chat | Update a chat
[**updateIndexedWebsite**](DefaultApi.md#updateIndexedWebsite) | **POST** /sources/websites/update | Update indexed website
[**uploadFile**](DefaultApi.md#uploadFile) | **POST** /files | Upload file



## deleteChat

> deleteChat(chatId)

Delete a chat

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let chatId = "chatId_example"; // String | The unique identifier for the chat session
apiInstance.deleteChat(chatId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatId** | **String**| The unique identifier for the chat session | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## deleteIndexedSource

> deleteIndexedSource(id)

Delete indexed source

This endpoint allows you to delete an indexed source by its ID. The ID can be either a fileId or a websiteId. If deleting a file, the file will be removed from storage. 

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let id = "id_example"; // String | The identifier for the source to delete. This can be either a fileId or a websiteId. 
apiInstance.deleteIndexedSource(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The identifier for the source to delete. This can be either a fileId or a websiteId.  | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## downloadFile

> File downloadFile(id)

Download file

This endpoint provides the specified file as a download. 

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let id = "id_example"; // String | The identifier for the file to download. 
apiInstance.downloadFile(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The identifier for the file to download.  | 

### Return type

**File**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


## getAllIndexedSources

> GetAllIndexedSources200Response getAllIndexedSources(opts)

Get all indexed sources

This endpoint retrieves a list of all indexed sources, including files and websites. 

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let opts = {
  'filterExpression': "filterExpression_example" // String | An optional filter expression to filter the indexed sources. This can be used to filter results based on specific criteria. The syntax of the filter expression can be found in the server documentation. 
};
apiInstance.getAllIndexedSources(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterExpression** | **String**| An optional filter expression to filter the indexed sources. This can be used to filter results based on specific criteria. The syntax of the filter expression can be found in the server documentation.  | [optional] 

### Return type

[**GetAllIndexedSources200Response**](GetAllIndexedSources200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getChat

> Chat getChat(opts)

Create or retrieve a chat

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let opts = {
  'chatId': "chatId_example" // String | The unique identifier for the chat session
};
apiInstance.getChat(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatId** | **String**| The unique identifier for the chat session | [optional] 

### Return type

[**Chat**](Chat.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getMetadataKeys

> GetMetadataKeys200Response getMetadataKeys()

Get metadata keys

This endpoint provides the metadata keys that are supported for searching. This list includes custom keys provided via additional properties. All keys are complete. So there is no need to add &#x60;additionalProperties.&#x60; for custom keys. 

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
apiInstance.getMetadataKeys((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetMetadataKeys200Response**](GetMetadataKeys200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getSystemInfo

> SystemInfo getSystemInfo()

Get system information

This endpoint provides information about the system. 

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
apiInstance.getSystemInfo((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SystemInfo**](SystemInfo.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indexFiles

> indexFiles(indexFilesRequestInner)

Index new files

This endpoint allows you to index new files by uploading them. 

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let indexFilesRequestInner = [new CivicSage.IndexFilesRequestInner()]; // [IndexFilesRequestInner] | 
apiInstance.indexFiles(indexFilesRequestInner, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexFilesRequestInner** | [**[IndexFilesRequestInner]**](IndexFilesRequestInner.md)|  | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## indexWebsite

> indexWebsite(indexWebsiteRequest)

Index Website

This endpoint allows you to index a website by providing its URL. The service will only index the site the url points to. It will not follow links. 

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let indexWebsiteRequest = new CivicSage.IndexWebsiteRequest(); // IndexWebsiteRequest | 
apiInstance.indexWebsite(indexWebsiteRequest, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexWebsiteRequest** | [**IndexWebsiteRequest**](IndexWebsiteRequest.md)|  | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## searchFiles

> [SearchResult] searchFiles(searchQuery, opts)

Search for files

This endpoint allows you to search for indexed files. You can specify the page number and size for pagination. The search query is required in the request body. 

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let searchQuery = new CivicSage.SearchQuery(); // SearchQuery | 
let opts = {
  'pageNumber': 0, // Number | Page number
  'pageSize': 20 // Number | Page size
};
apiInstance.searchFiles(searchQuery, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchQuery** | [**SearchQuery**](SearchQuery.md)|  | 
 **pageNumber** | **Number**| Page number | [optional] [default to 0]
 **pageSize** | **Number**| Page size | [optional] [default to 20]

### Return type

[**[SearchResult]**](SearchResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## sendMessage

> Chat sendMessage(chatId, chatMessage)

Send a message in a chat

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let chatId = "chatId_example"; // String | The unique identifier for the chat session
let chatMessage = new CivicSage.ChatMessage(); // ChatMessage | 
apiInstance.sendMessage(chatId, chatMessage, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatId** | **String**| The unique identifier for the chat session | 
 **chatMessage** | [**ChatMessage**](ChatMessage.md)|  | 

### Return type

[**Chat**](Chat.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## submitFeedback

> String submitFeedback(feedback)

Submit feedback

This endpoint allows you to submit feedback. The feedback can be an arbitrary string. 

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let feedback = new CivicSage.Feedback(); // Feedback | 
apiInstance.submitFeedback(feedback, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedback** | [**Feedback**](Feedback.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## updateChat

> updateChat(chatId, chat)

Update a chat

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let chatId = "chatId_example"; // String | The unique identifier for the chat session
let chat = new CivicSage.Chat(); // Chat | 
apiInstance.updateChat(chatId, chat, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatId** | **String**| The unique identifier for the chat session | 
 **chat** | [**Chat**](Chat.md)|  | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## updateIndexedWebsite

> updateIndexedWebsite(updateIndexedWebsiteRequest)

Update indexed website

This endpoint allows you to update indexed website sources. It requires an array of websiteIds to update the corresponding sources. If the list is empty, all indexed websites will be updated. If the list contains specific websiteIds, only those will be updated. If the list contains a websiteId that does not exist, it will be ignored. 

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let updateIndexedWebsiteRequest = new CivicSage.UpdateIndexedWebsiteRequest(); // UpdateIndexedWebsiteRequest | 
apiInstance.updateIndexedWebsite(updateIndexedWebsiteRequest, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateIndexedWebsiteRequest** | [**UpdateIndexedWebsiteRequest**](UpdateIndexedWebsiteRequest.md)|  | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## uploadFile

> UploadFile200Response uploadFile(file, opts)

Upload file

This endpoint you to upload a file for indexing. This endpoint will **not** index the file. It is only for uploading files that you want to index later. 

### Example

```javascript
import CivicSage from 'civic_sage';

let apiInstance = new CivicSage.DefaultApi();
let file = "/path/to/file"; // File | 
let opts = {
  'temporary': false // Boolean | If set to true, the file will be stored temporarily and deleted after some time. If set to false, the file will be stored permanently. Temporary files cannot be indexed. They should be used in chats. 
};
apiInstance.uploadFile(file, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**|  | 
 **temporary** | **Boolean**| If set to true, the file will be stored temporarily and deleted after some time. If set to false, the file will be stored permanently. Temporary files cannot be indexed. They should be used in chats.  | [optional] [default to false]

### Return type

[**UploadFile200Response**](UploadFile200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

