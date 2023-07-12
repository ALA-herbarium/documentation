# Transcription

## The transcription spreadsheet

The columns are in five sections. Columns that are colored are those
that are to be uploaded to Arctos, the others being the ‘raw’ values,
or informational. The contents of columns with an asterisk (“*”)
**must** have been checked against lookup tools in Arctos.

**Identifiers**

 * `barcode`: ALA barcode, beginning with ‘H’. Prepopulated
 * `ALAAC`: ALA accession number. Prepopulated
 * `arctos_guid`: Arctos GUID. Blank if records not yet uploaded. If
   not blank, the online record can be found by prefixing the GUID with
   `https://arctos.database.museum/guid/`
 * `image`: Link to the specimen image at TACC
 
**Taxonomy**

 * `name_orig_or_annot`: (dropdown) Some specimens have annotation
   labels stuck on them, with an updated name. We want to always enter
   the _newest_ name, so if there is an annotation, enter the name on
   the annotation label.  If the data you enter is from the original
   label, select “original”, if you enter a name from an annotation
   label, select “annotation”. Eventually we will go back to each
   specimen with a name from the annotation and also enter the
   original name.
 * `sci_name_raw`: The name as seen on the label
 * `sci_name*`: The corresponding name as found in the Arctos
   [taxonomy search][1]
 * `name_not_found`: If the raw name cannot be found in Arctos, select
   “not found”
 * `ident_by_raw`: The name of the identifier or ‘determiner’ as seen
   on the label; this is the person who gave the name to the
   specimen. Sometimes written after “Det.”
 * `ident_by*`: The name of the identifier as found in the Arctos
   [agent search][2]
 * `ident_by_uncertain`: If you are unsure of the person’s name,
   select “uncertain” and possibly add a note in the Questions
   column. If it is clear that the person does not yet exist in
   Arctos, select “not found”
 * `ident_date`: The date of the identification, if given. Use ISO
   format dates: `YYYY-MM-DD`, or for no day `YYYY-MM`, or no month
   just use `YYYY`
   
**Geography**

 * `higher_geog*`: The finest resolution for the name of a geographic
   area, as found in the Arctos [Places and Events search][3]. Select
   ‘Geography’ in the initial dropdown. Copy the text (in black font)
   in the second column (e.g., “Russia, Irkutsk”). Please make sure
   you are not pasting addition spaces or tabs into the field.
 * `locality_raw`: The verbatim text of the locality on the specimen
 * `spec_locality`: Changed and amended text to make the locality
   description better. See Arctos [tips][3] on writing good locality
   descriptions. Note: “Specific Locality should start with the most
   specific part of the locality and end with the most general.” This
   is the _opposite_ of the system used in Higher Geography.  Remove
   any habitat information that is not integral to refinding a place,
   and enter it in the habitat field.
 * `state`: (optional) For reference only
 * `country`: (optional) For reference only
 * `latitude_dms`: If the original label uses Degrees, Minutes,
   Seconds for coordinates, enter the verbatim text here. Convert the
   coordinates to decimal degrees using online tools ([FCC][4],
   [NOAA][5]), or calculate yourself (DD = D + M/60 + S/3600).
 * `longitude_dms`: ditto
 * `coord_on_label`: Were the coordinates on the label, or did they
   need to be researched? The latter is called georeferencing the
   specimen.
 * `latitude_dd`: The latitude in decimal degrees.  **Do not use more
   than five decimal places**: 0.016 degrees is one nautical mile (= 1
   minute of latitude), and 0.00001 degrees is
   [approx. one meter][6]. GPS accuracy is seldom better than 10
   meters, or 0.0001 degrees.
 * `longitude_dd`: The longitude in decimal degrees.  **Pay attention
   to the sign**; Alaska has a **negative** longitude.
 * `error_m`: If you are georeferencing the specimen, give your
   estimate of accuracy, in meters. If the coordinates were on the
   label, and the error was not given, leave blank.
 * `elev_ft`: If the elevation on the label was given in feet, enter
   here and convert to meters (1 ft = 0.3048 m).
 * `elevation_m`: The elevation in meters. Note that if a range of
   elevation is given on the label, enter the lower value.
 * `habitat`: The exact transcription of any habitat information on a
   label. Often the locality description contains some habitat
   information. Do not duplicate any habitat information that occurs
   as part of the final specific locality.
 
**Collectors**

 * `collector1_raw`: The verbatim name of the first collector.
 * `collector1*`:  The name of the first collector as found in the Arctos
   [agent search][2]
 * `c1_uncertain`: If you are unsure that the Arctos name is the same
   as the verbatim name, select “uncertain” and possibly add a note in
   the Questions column. If it is clear that the person does not yet
   exist in Arctos, select “not found”
 * `collector2 ...`: second collector
 * `collector3 ...`: third collector. If there are more than three
   collectors, add additional collectors in the ‘Questions’ field.
 * `coll_number`: The collector’s number for the collection. Often
   these a simply an integer (a person’s lifetime serial number),
   sometimes a integer preceded by a year (‘2023-12’ or ‘05-100’),
   sometimes an integer with a prefix code (‘xm-234’)
 * `coll_date`: The date for the collection. If a range of dates is
   given, select the initial or starting date.
 
**Questions**

 * `Questions`: If you have any questions, enter them here. Use this
   field also for additional notes.

[1]: https://arctos.database.museum/taxonomy.cfm
[2]: https://arctos.database.museum/agent.cfm
[3]: https://handbook.arctosdb.org/documentation/locality.html
[4]: https://www.fcc.gov/media/radio/dms-decimal
[5]: https://www.ngs.noaa.gov/NCAT/
[6]: https://www.usna.edu/Users/oceano/pguth/md_help/html/approx_equivalents.htm
