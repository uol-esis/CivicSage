# CivicSage.SearchResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**documentId** | **String** | This identifies this text.  | 
**fileName** | **String** | The name of the file that was indexed. If this is present, it means the result is from a file.  | [optional] 
**fileId** | **String** | The identifier for the file that was indexed. If this is present, it means the result is from a file.  | [optional] 
**url** | **String** | The URL of the website that was indexed. If this is present, it means the result is from a website.  | [optional] 
**title** | **String** | The title of the source.  | 
**uploadDate** | **Date** | The date and time when the file was uploaded or website was indexed.  | [optional] 
**text** | **String** | The text content of the indexed file or website. This is the embedded text that matched the search query.  | 
**score** | **Number** | The score of the search result. This is a measure of how well the result matches the search query. Higher scores indicate better matches. The value is between 0 and 1, where 1 is a perfect match.  | 


