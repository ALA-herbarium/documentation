# Transcription

## The transcription spreadsheet

The generic transcription [template][7] is always evolving, but is
becoming stabilized.

 * **Tabs**: There are (at least) three tabs: `data entry`, `upload`
   (locked), and `README`. Please check the `README` tab before using
   the sheet.
 * **Color**: Red columns are informational questions, not data
   fields.  Fill these in if not pre-populated. Green columns are
   controlled vocabulary; values of **agent**, **species**, **higher
   geography** must be checked in Arctos before entering in this sheet
 * **Optional fields**: Even if you are filling in all sections of the
   sheet, some fields are optional, indicated by “(opt)” in the header.
   
There are several sections, divided by solid lines:

**Informational**

 * `notes`: If you have any questions, enter them here. Use this field
   also for additional notes.

**Identifiers**

 * `accession`: leave blank is not pre-popuated
 * `ALAAC`: ALA accession number. Pre-populated
 * `barcode`: ALA barcode, beginning with ‘H’. Sometimes pre-populated
 * `arctos_guid`: Arctos GUID. Blank if records not yet uploaded. If
   not blank, the online record can be found by prefixing the GUID with
   `https://arctos.database.museum/guid/`
 
**Collectors**

 * `collector’s code`: The collector’s number for the
   collection. Often these a simply an integer (a person’s lifetime
   serial number), sometimes a integer preceded by a year (‘2023-12’
   or ‘05-100’), sometimes an integer with a prefix code
   (‘xm-234’). If the collector code is a person’s serial number, but
   that person is not the first collector, add the person’s family
   name before the collector’s code (e.g., “Crum 23320”), otherwise
   just write the code.
 * `collector 1`: The name of the first collector as found in the
   Arctos [agent search][2]. If the person is not found in Arctos, or
   you are unsure, add a `*` after the name, and a comment in the notes
   field
 * `collector 2 ...`: second, third, fourth collectors. If there are
   more than three collectors, add additional collectors in the
   ‘notes’ field.
 * `verbatim date`: The date for the collection as written on the label.
 * `began date`: The date of collection in YYYY-MM-DD format. 
 * `ended date`: The end of a range of dates, or just the same as the
   `began date`.

**Specimen description**

 * Any notes present on the plant (e.g., “petals pale blue”)
 
**Taxonomy**

Some specimens have annotation labels stuck on them, with an updated
name. We want to always enter the _newest_ name as the first ID. This
may be either on an annotation label, or may be the main label. If
there is an older name, add as `species 2`, etc.

 * `species`: The name as found in the Arctos [taxonomy search][1];
   add a “*” after the name if it is not found or if you are not
   sure. Add some notes in the notes field if needed.
 * `det by`: The name of the identifier or ‘determiner’, the person
   who gave the name to the specimen. Sometimes written after “Det.”
   Enter name as found in the Arctos [agent search][2], or add a “*”
   after the name if not found.  Enter nothing if there is no info on
   determiner.
 * `det by date`: The date of the identification, if given. Use ISO
   format dates: `YYYY-MM-DD`, or for no day `YYYY-MM`, or no month
   just use `YYYY`. Leave blank if there is no info.

**Location info**

 * `higher geography`: The finest resolution for the name of a
   geographic area, as found in the Arctos
   [Places and Events search][3]. Select ‘Geography’ in the initial
   dropdown, then select ‘Assertable geography’ = yes. Copy the text
   (in black font) in the second column (e.g., “Russia,
   Irkutsk”). Please make sure you are not pasting addition spaces or
   tabs into the field.
 * `verbatim locality`: The verbatim text of the locality on the specimen
 * `specific locality`: Changed and amended text to make the locality
   description better. See Arctos [tips][3] on writing good locality
   descriptions. Note: “Specific Locality should start with the most
   specific part of the locality and end with the most general.” This
   is the _opposite_ of the system used in Higher Geography.  Do not
   include information already in ‘higher geography’. Remove any
   habitat information that is not integral to refinding a place, and
   enter it in the habitat field.
 * `habitat`: The exact transcription of any habitat information on a
   label. Often the locality description contains some habitat
   information. Do not duplicate any habitat information that occurs
   as part of the final specific locality.
 * `georef source`: If the longitude and latitude are on the label,
   choose ‘on label’, if you did the georeferencing yourself, choose
   ‘by you’.  Only do georeferencing if you have been asked to.
 * `verbatim latitude`: as written on the label (if it’s there)
 * `verbatim longitude`: as written on the label (if it’s there)
 * `latitude d.ddd`: The latitude in decimal degrees.  **Do not use
   more than five decimal places**: 0.016 degrees is one nautical mile
   (= 1 minute of latitude), and 0.00001 degrees is
   [approx. one meter][6]. GPS accuracy is seldom better than 10
   meters, or 0.0001 degrees.  Convert the coordinates from degree,
   minutes, seconds to decimal degrees using online tools ([FCC][4],
   [NOAA][5]), or calculate yourself (DD = D + M/60 + S/3600).
 * `longitude d.ddd`: The longitude in decimal degrees.  **Pay attention
   to the sign**; Alaska has a **negative** longitude.
 * `max error (m)`: If you are georeferencing the specimen, give your
   estimate of accuracy, in meters. If the coordinates were on the
   label, and the error was not given, leave blank.
 * `datum`: If given on the label. Else leave blank.
 * `min elev (m)`: The minimum elevation in meters. If the elevation
   on the label was given in feet, convert to meters (1 ft = 0.3048
   m).
 * `max elev (m)`: The max elevation in meters, if a range is
   given. If no range is given, enter the same value here as in the
   previous field.

## The transcription process

If transcribing from a spreadsheet prepopulated with GUIDs:

 * Open the spreadsheet
 * Click on the GUID
 * View the Arctos record, and open the image of the label, confirming
   that some transcription is needed. Fill in the questions in red (if
   you have been asked to).
 * **Enter only the data sections (above) that are missing.**
 * **NOTE**: if the collectors are correct, except that there is an
   ‘unknown’ in the position of first collector, please full in all
   collectors - the whole collector set will be overwritten.

[1]: https://arctos.database.museum/taxonomy.cfm
[2]: https://arctos.database.museum/agent.cfm
[3]: https://handbook.arctosdb.org/documentation/locality.html
[4]: https://www.fcc.gov/media/radio/dms-decimal
[5]: https://www.ngs.noaa.gov/NCAT/
[6]: https://www.usna.edu/Users/oceano/pguth/md_help/html/approx_equivalents.htm
[7]: https://docs.google.com/spreadsheets/d/1MWvX5YVTP7Uyavd35PcVIzTqjYq7YyJa7QK8D6sSzwU
