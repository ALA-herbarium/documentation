# Taxonworks

## Instances

Steffi’s _Ephedra_ project is at <https://sfg.taxonworks.org/>

## Creating _ex_ and _in_ for names

 1. Using the “_new task_” interface, create the valid name (T1). 
    * Add (just) a Person as an Author (the _ex_ person)
 2. Create another taxon of the same rank and name (T2). 
    * Give T2 an “invalidly published” status, or even better, specify
      the reason for invalid publication, e.g., “provisional” (this
      will remove the validation question).
    * Create a relationship to T1: click on “Show all” and select
      `validly published as` (= “_ICN_ validly published as”)
 3. Return to T1, and edit again.
    * Add a source Publication (the _in_ author).  This will trigger
      the label to be ‘recalculated’ as “taxon _ex_ person _in_
      publication”. If the author of the _in_ publication is the same
      as the _ex_ person, than that Person can be removed as an
      Author.  
      
The extra edit in 3 is necessary unfortunately: setting both
Publication and Author in step one, and performing step 2 will not
trigger the correct ex/in label.

## What determines the identifier in the ‘blue box’ for a CollectionObject

The _last_ identifier is the one that becomes the shorthand identifier
in the blue box.  For the _Ephedra_ the most meaningful shorthand is
the collector code (first collector’s surname plus number/code).

 * Do not use the ‘catalog number’ in the main form - this is
   confusing. Just use the radial annotator ‘Identifiers’. 
 * Select Catalog Number (not Trip Number)
 * Find the [identifier namespace][1] ‘Collector name(s)
   (=dwc:recordedBy) [space] collector's number or code
   (=dwc:recordNumber)’
 * Write (just) the surname of the primary collector and the life
   sequential number, or annual number, or other code for the
   collection.
 * If you need to add other Identifiers (e.g., Mobot accession, ALA
   accession, etc.), add it, then delete the desired collector code,
   and re-add it so that it is at the bottom of the list.

Note that this collector code is not globally unique, since other
duplicates of the the collection will have the same identifier. In
case you need two or more duplicates in your database, add an _a_ and
_b_, etc., to the collection number.

## Browsing specimens via the DwC Dashboard

 * From the homepage, enter ‘DwC’ in the Tasks search box and select
   DwC Dashboard. Click the star symbol to add it to your favorites
   for fast access next time.
 * Click the small blue text “Create DwC Archive by filtered
   collection object result”
 * You are now in the specimen grid. No specimens will be shown at
   first.
 * To see all specimens, click ‘Filter’ in the top left. Or...
 * Select one or more filters, then click ‘Filter’. E.g.,
    * To see just specimens tagged with ‘Ephedra tamayae manuscript’
      scroll down to ‘Tags’, click the ‘All’ [tags] tab, and select
      the tag you want.
    * To see just some taxa, scroll down to ‘Taxon name’ and start to
      type the name you want.
 * A grid of specimens x fields (columns) will appear. The default is
   to show all fields. A subset of fields can be selected for using
   the dropdown at the top (initially labeled ‘All’). For example, to
   just see names for each specimen, select ‘TaxonNames’ in the
   dropdown.
 * The grid in view can be downloaded using the dropdown on the top
   right (initially labeled ‘CSV’)
 * The data in the grid cannot be edited directly, but editing actions
   can be accessed rapidly using the ‘radial’ symbols on the left of
   each specimen record. E.g., 
    * to edit in the main (comprehensive) specimen form, chose ‘Edit’
      in the righthand Radial Navigator.
    * To add an identifier, choose ‘Identifiers’ in the lefthand
      ‘Radial annotator’

[1]: https://sfg.taxonworks.org/namespaces/10134
