# CivicSage.SystemInfo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serverVersion** | **String** | The version of the server | 
**apiVersion** | **String** | The version of the API implemented by the server | 
**embeddingContextWindow** | **Number** | The context window size used for embeddings | 
**chatContextWindow** | **Number** | The context window size used for chat interactions | 
**maxEmbeddingsInChat** | **Number** | The maximum number of embeddings that can be used in a chat | 
**supportedFileEndings** | **[String]** | The file endings that are supported for indexing. | 
**maxFileSize** | **Number** | The maximum file size that can be uploaded for indexing, in megabytes. | 
**metadataKeys** | **[String]** | The metadata keys that are supported for indexing. These keys can be used to filter search results. Custom properties are not in this list but can be reached via the additional properties key.  | [optional] 


