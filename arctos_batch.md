# Arctos batch/bulkload operations

## Batch update records using the Manage Menu

 * Navigate to the main Search page, search for records that all require the same change, i.e. add collector. Click Submit Query. Tip: customize your search page to include 'GUID' textbox to search using an item guid.
 * Review that record list is correct (if incorrect, to remove or add from the entries list modify your original search list).
 * Just above the entries list click on the [ Tools ] dropdown menu, and select appropriate value listed under **_Manage_**, i.e. **_Manage_** > Collectors
 * A new browser tab will open with entries from above search, and selected action, i.e. Add/Remove collectors for all catalog records listed below with **_Name_**, **_Role_**, and **_Order_** options.
 * Input appropriate values to be added/removed/updated to entire batch, select appropriate submit button, i.e. 'Insert Agent'
 
## Using the Bulkloader for new catalog records

Current (2024-04-11) bulkloader fields:

```
enteredby
accn
guid_prefix
identifier_1_value
identifier_1_type                          ALAAC
identifier_2_value                         
identifier_2_type                          collector number
identifier_2_issued_by
identification_1
identification_1_order                     1
identification_1_agent_1
identification_1_date
identification_1_attribute_type_1          verbatim identification
identification_1_attribute_value_1
identification_2
identification_2_order
identification_2_agent_1
identification_2_date
identification_2_attribute_type_1
identification_2_attribute_value_1
agent_1_name
agent_1_role                               collector
agent_2_name
agent_2_role
agent_3_name
agent_3_role
agent_4_name
agent_4_role
event_verbatim_date
event_began_date
event_ended_date
attribute_1_type                           description
attribute_1_value
locality_higher_geog
event_verbatim_locality
locality_specific
record_event_habitat
locality_attribute_1_value
locality_attribute_1_type                  georeference source
coordinate_dec_long
coordinate_dec_lat
coordinate_datum                           unknown / 
coordinate_max_error_distance
coordinate_max_error_units
coordinate_lat_long_units
locality_min_elevation
locality_max_elevation
locality_elev_units
record_event_type                          collection
record_event_collecting_source             wild
record_event_determiner
record_event_determined_date
record_event_verificationstatus            accepted
part_1_name                                whole organism
part_1_condition                           unchecked
part_1_count                               1
part_1_disposition                         in collection
part_1_barcode
```

## Bulk-unloading & bulk-loading attributes 

 * From the Tools Directory page, from the Records section, select Attribute: Bulk Unload or Attribute: Bulkload.
 * Find the Load CSV link, and click. This page includes Definitions and Documentation outlining the format, required components, and tips. 
 * Get a template link provides a CSV file with pre-formatted delimiters - using this file for your upload is advised. File will download upon clicking and can be found in your browser downloads. 
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
