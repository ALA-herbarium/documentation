# Arctos one-by-one operations

## Adding an attribute to a specimen

 * Locate the specimen record in Arctos
 * Go to the "Record Attibutes" section, click "Edit"
 * If no "Record Attributes" section appears, from the main specimen record page, locate the blue tab titled "Attributes", click button to view "Edit Individual Attributes" pop-up form
 * Clear "Record Remark" field
 * Click "Create New Attribute" dropdown and select appropriate attribute, i.e. "processing history". Choose appropriate "Value" option, i.e. "label transcribed". Complete "Det. Date" and "Determiner" fields with current date and self as agent
 * Click "Save All"
 * Go back to the main specimen page and reload. Revisit the "Record Attributes" section and confirm new value was added 

## Adding Event and Locality to a specimen

 * Make sure you understand the basics of the Event + Locality data
   model in Arctos. DO NOT edit an Event or Locality used by other
   specimens, unless you are confident you know what you are doing.
 * Go to the "Place and Time" section, click "Edit"
 * Note: All records must have some Event information, and where
   records have been bulk loaded without transcription, a ‘dummy’
   Event was used (e.g., event id: [1525992][2], date: 1800-01-01 to
   2007-07-02, no verbatim locality recorded). This must be removed
   from the record you are entering during this update process.
 * Find the "Specimen/Event [Fork-Edit]" heading, click
   "Fork-Edit". This will clone the existing event and locality into
   new events and localities, enabling you to edit these without
   influencing other events or localities.
 * Confirm you are editing the "Fork-edit place-time" (popup) form,
   and provide these values:
    * Specimen/Event Type (“collection”)
    * Event Determiner (you) and Date (today)
    * Verified Status (“accepted”, see [definition][3]), and by who
      (you) and when (today)
    * Habitat (if on label; verbatim)
    * Collecting Source (“wild”)
    * Verbatim Date
    * Began Date and Ended Date (in ISO format; if only one day, enter
      same date for both)
    * Verbatim locality (transcribed exactly, capitals and all)
    * Higher Geography (find the smallest scale entry in the higher
      geography lookup that includes you locality)
    * Specific locality (derived from the verbatim locality, but
      written from fine scale to large scale, and excluding any
      information in the Higher Geography)
 * If you are not intending to georeference (long/lat) the locality,
   save the edits now (below). (It is a good idea to save at this
   point, even if you intend to georeference, and then re-enter and
   edit the locality to add long/lat)
 * If you are georeferencing,
    * Select Point-Radius value in "Primary Spatial Data Type" dropdown
    * Decimal Latitude (choose appropriate numbers of decimal
      precision: at latitude 67° North, degrees of _longitude_ (E-W):
      0.1° = 5 km, 0.01° = 481 m; 0.001° = 48 m; 0.0001° = 5 m; at
      _all_ latitudes, degrees: of _latitude_ (N-S): 0.1° = 11 km,
      0.01° = 1111 m; 0.001° = 111 m; 0.0001° = 11 m)
    * Decimal Longitude (ditto)
    * Max Error (choose an appropriate value based on: precision of
      coordinates, and specificity of description; e.g., “Fairbanks,
      Alaska” might have an error of 10 km).
    * Max Error Units (meters or kilometers)
    * Datum (“WGS 84”)
    * Georeference Protocol (use “not recorded” for the moment, see GH
      [issue][4])
 * At bottom of the form, below "On Save..." select "unaccept existing
   specimen_event" from the dropdown menu, click "Save Changes"
 * Go back to the main specimen page and reload. Revisit the "Place
   and Time" section and confirm new values were added. The
   unaccepted, dummy locality should now be in a dark gray box.
 * Final step. Click “Edit” again, locate the dummy event (usually
   with thousands of associated specimens), and click “Delete
   Specimen/Event”. This will _not_ delete the Event, only the
   association of the specimen with the event. When you return to the
   main record page, you should now see only one Place-Time box, the
   one you have just entered.

## Adding an identifier to a specimen

 * Locate the specimen record in Arctos
 * Go to the "Identifiers and Relationships" section, click "Edit"
 * In the "Add New Identifier" section, click the dropdown menu and select appropriate "ID Type", i.e. "collector number", and provide additional values. Note: non-integer numbers (no. with decimals or dashes) should be recorded in the "prefix" box
 * Click "Insert" and "Save Changes"
 * Go back to the main specimen page and reload. Revisit the "Identifiers and Relationships" section and confirm new value was added. 

## Adding an agent to Arctos

 * Search all variations of name in Arctos 
 * If none exists, from "Agent Search" page, click "Create Agent"
 * Note: bolded, enclosed in red, message; Read this! Avoid duplicates and ensure data validity by searching the web and recommended sites.
      * https://kiki.huh.harvard.edu/databases/botanist_index.html is an excellent resource for learning more about agents; information from this database can be used to verify existing information and provide more detail to agents in Arctos.
 * Create agent type "person" and enter preferred name value
 * Click "Create Agent"
 * Agent is now searchable and can be added as identifier and collector and if applicable can be edited with more detailed information from outside sources, i.e. HUH
 * Editing an agent in Arctos:
      * Search agent to edit, select name
      * To the right of "Summary for [agent's name] (person)" select "edit"
      * Add appropriate attributes and values, click "save" 

## Adding a relationship between existing agents in Arctos

 * Navigate to search agents, enter one of the agents to associate
 * Click on agent's name, follow to new tab opened - page titled "Summary for [agent's name] (person)"
 * Click "edit"
 * Click "select to create" dropdown under "Create Attribute" and find relationship type under relationship section of menu, i.e. relationship > associate of
 * Enter attribute values, including current as date determined and self as determiner.
 * Click "save"
 * Navigate back to agent summary and ensure new attribute values appear. Agents are now linked and can be searched by "Related Agent" field

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
[2]: https://arctos.database.museum/search.cfm?collecting_event_id=1525992
[3]: https://arctos.database.museum/info/ctDocumentation.cfm?table=ctverificationstatus
[4]: https://github.com/ArctosDB/arctos/issues/7499
