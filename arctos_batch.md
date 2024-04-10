# Arctos batch/bulkload operations

## Batch update records using the Manage Menu

 * Navigate to the main Search page, search for records that all require the same change, i.e. add collector. Click Submit Query. Tip: customize your search page to include 'GUID' textbox to search using an item guid.
 * Review that record list is correct (if incorrect, to remove or add from the entries list modify your original search list).
 * Just above the entries list click on the [ Tools ] dropdown menu, and select appropriate value listed under **_Manage_**, i.e. **_Manage_** > Collectors
 * A new browser tab will open with entries from above search, and selected action, i.e. Add/Remove collectors for all catalog records listed below with **_Name_**, **_Role_**, and **_Order_** options.
 * Input appropriate values to be added/removed/updated to entire batch, select appropriate submit button, i.e. 'Insert Agent'
 
## Using the Bulkloader for new catalog records

 * 

## Bulk-unloading & bulk-loading attributes 

 * From the Tools Directory page, from the Records section, select Attribute: Bulk Unload or Attribute: Bulkload.
 * Find the Load CSV link, and click. This page includes Definitions and Documentation outlining the format, required components, and tips. 
 * Get a template link provides a CSV file with pre-formatted delimiters - using this file for your upload is advised. File will download upon clicking. 
 * Enter the required fields provided in the field guide table, i.e. enter the *guid* of the specimen records and the *attribute_type* of the attribute you are bulk*unloading* in the csv file,  
 i.e. 
```
 guid           | attribute_type
 UAM:Herb:60591 | verbatim_attribute 
 UAM:Herb:60592 | verbatim_attribute 
```

  - one record per row in the CSV template - both fields are required. 
  For bulk*loading* check the Definitions and Documentation and supply required fields, i.e. *guid*, *attribute*, *attribute_value* 
 * Once your file is complete with all records to be modified, find the Browse button above Definitions and Documentation and click. Locate the file to be uploaded. Click Upload this file.
* Under Upload csv the page will read *Data Uploaded - Review and Load*. Click Review and Load. 
* Click Review for this user/status in the user table.
* The record will be listed in the table. Click Check All and set Status to 'autoload'.
* Click Change status for checked records. The record is no longer listed. 
