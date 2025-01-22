# DNA Sampling of specimens

First add to **loan**. This allows tracking of the return of the DNA
data:

 * Create a loan of type consumable
 * Add items:
    * Enter GUIDs
    * Dropdown ‘add items to transaction’
    * Click the existing part for each GUID that was sampled. Usually
      this will be the main ‘whole organism’ or ‘branch’
    * In ‘SubsampleAs’ enter the type of part removed (either whole
      organism or leaf)
    * Disposition: ‘used up’
    
This will add subsampled parts without barcoded containers, greyed out
because they are used up.

Second, add an **attribute** to each Record, either via the bulkloader, or using the Record Search and dropdown Tools -> Manage -> Attributes.

 * Attribute type: ‘tested for presence’
 * Attribute value: “Sampled for DNA by XX on YYYY-MM-DD”
 
Third, add new **parts** to each Record via the BulkloadParts loader
to represent the new paper label. (See also
[here](annotation_labels.md)). E.g.:

```
container_barcode,guid,part_name,condition,disposition,part_count,remarks,institution_acronym
H1144383,UAM:Herb:85618,media,good,in collection,1,paper label: 'Sampled for DNA by Quentin Cronk (UBC) 2025-01-21',UAM
```

Finally, add the physical paper annotation label to each sheet. 

