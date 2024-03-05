# Taxonomy

A specimen in Arctos can be identified to a name, or to a taxonomic
concept. The vast majority of identifications in Arctos use names.

## Names

Names (`scientific_name`) are just strings, of the form `Genus` or
`Genus species` or `Genus species inf. infra`. They have no authors
associated with them.  Creating them is easy, via the GUI or via a
bulk loader.

Note that the `taxon_name` [table][1] uses `scientific_name` as its
primary key.

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

The problem with exixting classifications:

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

 * Arctos only uses canonocal names as name objects, so there is no
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

From the taxonomy searcg page, these are the inputs:

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

