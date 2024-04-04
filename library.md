# Accessioning the ALA library

The physical collection of books and documents at ALA is a vital
element for the efficient functioning and data structure of the
collection.  Keeping track _within Arctos_ of what written resources
exist and where they are is a valuable goal. The following describes
our current approach.

## Data model

An **Arctos Record** contains metadata about textual objects:

 * Object type: `MaterialEntity`
 * Collection/GUID: ‘UAM:Herb’, even for cryptogam documents.
 * Identification (one only, required), to one of [this list][1] of
   ‘Documentary Objects’, e.g., Book or Letter. Not of great use,
   given the BiBTex records... Maybe set _all_ to be Documentary
   Objects?
 * Agents (optional): who contributed the document to the library, and
   if useful, who created the document (info captured also in attributes)
 * Identifiers (optional, also contained in BiBTeX record):
    * (optional) DOI: type = `identifier`, issued by = ‘DOI
      Foundation’, relationship = ‘same edition as’
    * (optional) ISBN: type = `identifier`, issued by = ‘International ISBN
      Agency’, relationship = ‘same edition as’
 * Record Event, Event, Locality: NONE
 * Accession (required): ‘2024.003.Herb’, an accession of the project
   [Accessioning the ALA Library][2]. Possibly add subsequent,
   different accessions based on logical data addition initiatives,
   all in the same _Project_?
 * **Attributes** (either of these can be searched for in the main
     Arctos interface; at least one is needed):
    * **description** A simplified summary of the document:
        `doc. type`**:** `first author, and initials`**.** `year`**.**
        `title`
    * **verbatim attribute** This is the **key data bibliographic data
        element**, a [BibTeX][3] representation of the document. Note
        that newlines are not allowed in Arctos. This can be entered
        later, if time is short.
        
The **Parts** and their **Containers** are the representations of
physical objects and their position in the building. Attention to this
_is vital_, and permits object tracking.

 * **Part**
    * type = ‘media’
 * **Container**
    * Barcode. Unlike most biological objects, we can and do affix
      barcodes to the books (parts) themselves, _but_ Arctos precludes
      containers of type ‘collection object’ from actually having
      barcodes. So we need a “dummy container” to place the documents
      into, as with normal collection objects. A container of type
      ‘folder’ seems to be the best choice, and can be thought of as
      the _covers_ of a book or sheaf of papers. These ‘folder’
      objects can then be housed on shelves, or in boxes.

An example of a book is [UAM:Herb:258400][7].

## Data management steps

### 1. Create containers

The only way to create containers is via the bulkloader.

 * Claim the barcode series
 * Find a physical series of unused (= unclassified in Arctos) barcode
   stickers (~500 long)
 * [Bulkload create][4] containers using the barcode series:
   `container_type` = folder, `barcode` = <series>, `label` =
   “Document, <barcode>”

### 2. Bulkload records

 * Accession the documents in a spreadsheet, with minimal
   bibliographic metadata, ISBN (scanned), and barcode
 * Use a script to create the BibTex string, add to a Bulkoader CSV,
   using the minimal fields described above.
 * Bulkload.
 
### 3. Object track

 * [Scan][5] the documents (i.e., their dummy folders) into their
   barcoded shelves.

### 4. Search

 * [Search][6] for key bibliographic terms in either the `verbatim
   attribute` or `description` Record attributes.
 * The records returned will not show the titles, but use the ‘Tools’ >> 
   ‘View’ >> ‘Attributes’ dropdown to see the ‘verbatim attributes’
   for each record.
 * Get the physical object.

  
[1]: https://arctos.database.museum/taxonomy.cfm?taxon_term==Documentary%20Objects
[2]: https://arctos.database.museum/project/10004386
[3]: https://en.wikipedia.org/wiki/BibTeX
[4]: https://arctos.database.museum/loaders/bulkCreateContainer.cfm
[5]: https://arctos.database.museum/moveContainer.cfm
[6]: https://arctos.database.museum/search.cfm
[7]: https://arctos.database.museum/guid/UAM:Herb:258400
