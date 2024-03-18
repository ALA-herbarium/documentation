# Taxonomy

A specimen in Arctos can be identified to a name, or to a taxonomic
concept. The vast majority of identifications in Arctos use names.

## Names

Names (`scientific_name`) are just strings, of the form `Genus` or
`Genus species` or `Genus species inf. infra`. In other databases
these are known as ‘canonical names’. They have no authors associated
with them.  Creating them is easy, via the GUI or via a bulk loader.

Note that the `taxon_name` [table][1] uses `scientific_name` as its
primary key.

### Taxonomy search options in Arctos

Taxonomic search can be performed:

 1. via the Record Search GUI (at <https://arctos.database.museum/search.cfm>),
 2. via ‘Find Records in Arctos with...’ buttons on the Name page
    (<https://arctos.database.museum/name/>),
 3. via writing a Query string for 
    <https://arctos.database.museum/search.cfm?>, or
 4. (via the SQL interface)
 
The behavior of options 1-3 (above) is documented below, ordered from
more specific searching to less specific:

 * Query `taxon_name_id=ID&identification_order=1` (via Name page,
   ‘Used in Identifications’, with added `&identification_order=1`):
    * **Returns** all specimens with the current (ID order = 1)
        identification for a name
 * Query `taxon_name_id=ID&identification_order=>0` (via Name page,
   ‘Used in Accepted Identifications’):
    * **Returns** all specimens with accepted identification (ID order
        = 1, 2, 3...) for a name
 * Query `taxon_name_id=ID` (via Name page, ‘Used in
   Identifications’):
    * **Returns** all specimens with identifications for a name,
        irrespective of the ID order (including ID order=0, depreciated names)
 * Query `scientific_name=NAME` (via Name page, ‘Used in
   Identification, less Strict’, or via the Catalog Record Search page):
    * **Returns** all specimens with identifications for a name,
        irrespective of the ID order, allowing for partial matches to
        the name
 * Query `taxon_name=NAME` (via Name page, ‘Used or Related to Used’,
   or via the Catalog Record Search page):
    * **Returns** i) all specimens with identifications to a name (any
      ID order), ii) all specimens identified to a synonym of an
      accepted name, or iii) all specimens identified to the accepted
      name of a synonym.  Synonymy is determined in **two** ways:
       * via the name’s Related Names (`taxon_relations` table) and
       * via the taxonomic hierarchy of a name (`taxon_terms` table):
         if a classification for a name in the accepted Source
         contains a name that is _different_ from the original name,
         the different name is considered a related name. For example,
         World Flora Online provides the classification of the
         _accepted_ name for any synonyms, permitting searching for
         both accepted name and synonyms.

### Entering names into Arctos

The name associated with an identification should be the _name on the
label_, not the synonym of the name (see [this issue][5]).

## Classifications

For each name there may be several classifications that match the
`scientific_name`; in this context ‘classification’ means a set of
non-hierarchical terms (e.g., `display_name` or `author_text`) and
hierarchical classes (e.g., `order`, `family`) _for each name_. Each
classification exists in a ‘source` (e.g., ‘Arctos Plants’,
‘WoRMS’). A collection (e.g., `UAM:Herb`) ranks the sources that
should be used for their classification (in ‘Manage Collection’). At
ALA we use three: ‘Arctos Plants’ > ‘WoRMS’ > ‘Arctos’ (a legacy
source). If there is no classification for a name in the first source,
then the second is searched, and so on. The risk of this fallback is
that a name in a secondary source will be a _homonym_ (same name,
different meaning), and the family, order and even kingdom may appear
incorrect for the specimen. Eventually it will be better to have all
names in ‘Arctos Plants’ and deactivate the fallbacks.

Currently (2024-02-29) there are 804 names used in ALA identifications
that do not have a classification in these three sources (see
[SQL][2], and this [issue][3]).

It is not enforced in the database that there is only one
classification per source per name, and if there are more, the
hierarchical terms get merged, possibly even for homonyms (see this
[issue][4]). So it is a good idea to make sure that the name usages
for ALA have a single classification per source per name (on
2024-02-29 this is true, [SQL][4]).

### A proposal for a new Classification source

[in progress]

The problem with existing classifications:

 * Arctos Plants is an old and very uneven classification (add stats
   on names with family, etc).
 * The new WFO in Arctos comes via Global Names, which gives the
   classification of the _accepted name_ for a synonym, not the
   classification of the synonym itself.  It also lacks key metadata
   for the name (display name, etc.). WFO also (appropriately) lists
   multiple classifications for the same canonical name where
   different instances (with diff. authors) exits. In Arctos this
   creates data retrieval and display problems.
   
A problem with the current taxonomy model in Arctos:

 * Arctos only uses canonical names as name objects, so there is no
   way to distinguish the same name with different authors.
 * Arctos also specifies synonymy among canonical names, which again
   precludes differentiating among synonymies that depend on
   variations in author string.


A proposed new classification (‘Alaska plants’) will:

 * **Synonymy**: Use the new Flora of Alaska checklist as a rank 1
   source for synonymy and accepted status, and use WFO as a rank 2
   source.
 * **Classification**: Use WFO as the source of higher taxonomy above genus
 * Only have **one instance** of each canonical name. Where a name
   exists in FoAK, that will be the full name chosen. For WFO? What
   strategy?  How frequent is this an issue?
   
   Alnus sinuata a good example

How specimens are searched for:

The code is at https://github.com/ArctosDB/arctos-dev/blob/main/3.2.9/search.cfm

From the taxonomy search page, these are the inputs:

 * Exact match to name, identification order = 1: `search.cfm?taxon_name_id=`
 * Exact match to name, identification order = 1 or more:
   `search.cfm?taxon_name_id=...&identification_order=%3E0`
 * “Used in identification, less strict match”, ?i.e., Exact match to
   name, any identification order?: `search.cfm?scientific_name=...`
 * Name used or related to used (looking up synonyms):
   `search.cfm?taxon_name=...`

Best practice: Add verbatim identification to get the Author string.

Complete transcription:
https://arctos.database.museum/guid/UAM:Herb:108266

Update: https://handbook.arctosdb.org/how_to/How_to_Search_for_Specimens_with_Identification_and_Taxonomy.html


## Taxonomic concepts

(to follow)


[1]: https://arctos.database.museum/tblbrowse.cfm?tbl=taxon_name
[2]: https://github.com/ALA-herbarium/arctos-tools/blob/main/sql/sql/48.sql
[3]: https://github.com/ALA-herbarium/issues/issues/106
[4]: https://github.com/ALA-herbarium/arctos-tools/blob/main/sql/sql/49.sql
[5]: https://github.com/ALA-herbarium/issues/issues/111

