# Arctos one-by-one operations

## Adding locality to a specimen

 * Locate the specimen record in Arctos
 * Go to the "Place and Time" section, click "Edit"
 * Note: an auto-generated Specimen/Event exists & is populated for each and every record created within Arctos. It is important to not select "Locality [Edit Locality]" when updating place and time. 
 * Find the "Specimen/Event[scroll to top][Fork-Edit]" heading, click "Fork-Edit"
 * Confirm you are editing the "Fork-edit place-time" form, provide values
 * At bottom of the form, below "On Save..." select "___" from the dropdown menu, click "Save Changes"
 * Go back to the main specimen page and reload. Revisit the "Place and Time" section and confirm new values were added. 

## Adding an identifier to a specimen

 * Locate the specimen record in Arctos
 * Go to the "Identifiers and Relationships" section, click "Edit"
 * In the "Add New Identifier" section, click the dropdown menu and select appropriate "ID Type", i.e. "collector number", and provide additional values. Note: non-integer numbers (no. with decimals or dashes) should be recorded in the "prefix" box
 * Click "Insert" and "Save Changes"
 * Go back to the main specimen page and reload. Revisit the "Identifiers and Relationships" section and confirm new value was added. 


## Adding an agent to Arctos

 * Search all variations of name in Arctos
 * If none exists, from "Agent Search" page, click "Create Agent"
 * Create agent type "person" and enter preferred name value
 * Click "Create Agent"
 * Agent is now searchable and can be added as identifier and collector 

## Adding a collector to a specimen

 * Locate the specimen record in Arctos
 * Go to the "Agents" section, click "Edit"
 * In "collectors" section, delete top row with populated "unknown" value by clicking "delete"
 * In row below, add agent by typing collector name then tab to verify
 * Existing agent value box will appear green. If no agent exists, follow steps to add agent in Arctos. 

## Adding an identification to a specimen

 * Locate the specimen record in Arctos
 * Go to the "Identifications" section, click "Edit"
 * In the "Edit an Existing Determination" section, remove populated values (ID Date, Remarks)
 * Select appropriate "Attribute" from dropdown, i.e. "verbatim identification" and provide known values. 
 * Click "Save Changes"
 * Click "X" to return to main specimen page and reload. Revisit the "Identifications" section and check that your changes are reflected.  

## Adding a barcode to a specimen

 * Stick the physical barcode onto the herbarium sheet
 * Locate the specimen record in Arctos
 * Go to “Part Location” in the menu bar
 * Click in the “whole organism” box in the tree diagram. There should
   only be one higher step: “The Universe”
 * Click on “Edit this container” on the right
 * Either type or scan the sheet barcode into the “Move To Barcode”
   field (above “Print”, “Delete container” ...)
 * Click “Save Container Edits”
 * Go back to the main specimen page and reload. Revisit the “Part
   Location”. You should now see that the “whole organism” is now
   contained in a “herbarium sheet” with the correct barcode (shown
   between brackets), and that herbarium sheet is contained with “The
   Universe”

Note: for this to work, the herbarium sheet container needs to have
been created previously, usually in the ‘Bulk Edit Container’ tool.

## All data from specimen entered

When you are satisfied that all data for a specimen (that _can_ be)
have been added to Arctos, add an attribute: `processing history` ->
`label transcribed`. The [meaning][1] of this is “all inscriptions
attached to this object have been transcribed”. This can then be used
to find all ‘verified complete’ data records.

[1]: https://arctos.database.museum/info/ctDocumentation.cfm?table=ctprocessing_history
