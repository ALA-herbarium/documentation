# Searching in Arctos

This HOWTO is aimed at users searching for information about the
specimens held at the University of Alaska Museum of the North
Herbarium (ALA).

Enter the Arctos search page using [this link][2] to limit your search
to ALA collections (vascular, cryptogams, fungi and algae).

## Searching for specimens by taxonomy

From most to least specific:

 * **1. To search for specimens with latest (current) identification
     matching your query name**:
    * First, search for the name in the [Taxonomy Search][4] (there is
      no way to do this search via the main [search page][2]).
    * In the name’s ‘Usage’ section, click on ‘Used in Accepted
      Identifications’. A search will start. 
    * When the results have been generated, edit the ‘ID Order’ field
      from ‘>0’ to ‘1’ and click ‘Submit Query’.
 * **2. To search for specimens with any identification (latest or prior)
     matching your query name**: 
    * First, search for the name in the [Taxonomy Search][4] (there is
      no way to do this search via the main [search page][2]).
    * In the name’s ‘Usage’ section, click on ‘Used in Accepted
      Identifications’. A search will start.
 * **3. To search for specimens with any identification matching
     your query name, and identifications to a synonym of your query
     name**: 
    * In main [Search page][2], the Customize Search and Results
      dropdown at the top of the page, select ‘Customize or Manage
      Profile’. Click the ‘Taxonomy’ check box under ‘Search Options’
      and then click ‘Use Selected’.
    * Do not enter anything in the Identification box. Instead,
    * In ‘Taxon Term’ enter your name preceded by ‘%’ (for ‘contains’),
    * In ‘Type or Rank’ enter ‘synonyms’ (the field name of the list
      of synonyms for a taxon from WFO),
    * In ‘Source’ enter ‘UAM Plants’ 
 * **4. To search for specimens with any identification related in any
     way to your query name**:
    * Use the ‘Any taxon, ID, common name’ search box. This will
      search all classifications, common names, and the Arctos names
      relationships tables for your search term ([more][3]). [search
      argument = ‘taxon_name’]

<!--  * In the
      Customize Search and Results dropdown at the top of the page,
      select ‘Customize or Manage Profile’. Click the ‘Identification
      Order’ check box under ‘Search Options’ and then click ‘Use
      Selected’.
    * Enter your name in the Identification box, with the kind of
      match required (‘match’ for exact match)
    * Enter ‘1’ in the Identification Order field. -->

### Background on taxonomic information

 * A specimen in Arctos must have **at least one taxonomic
   identification**, but may have several identifications corresponding
   to the history of annotation labels on a physical specimen.
 * The current, primary identification has **order** of _1_. Previous
   identifications may be ordered _2_, _3_, etc., or may be numbered _0_
   for deprecated or incorrect identifications.
 * All identifications are linked to a scientific name, but the Arctos
   name itself **does not include the author string**. For some ALA
   records however additional information about the author string used
   in the determination was stored in either a _verbatim
   identification_ attribute (displayed in a box below the scientific
   name), or using the Arctos _A {string}_ structure (displayed as the
   name in bold).  Our goal is to eventually record the author strings
   (where specified on the label) for all name usages.
 * Metadata about a name comes from a **classification** (or taxonomy)
   which includes the usual hierarchical classification for biological
   names (kingdom, phylum, etc.). For ALA we prioritize the ‘UAM
   Plants’ classification, derived from the [World Flora Online][1]
   (WFO). **To see** the classification, click the ‘eye’ symbol under
   the name.
 * The WFO classification also includes **synonymy** details about the
   name, _for particular author strings_.  Because the Arctos name
   does not specify the author string, it cannot directly be related
   to another name via synonymy, but where the author string is known
   (from the label image, verbatim identification field or ‘A
   {string}’) the WFO classification can be consulted for the synonymy
   details. The ‘synonymy’ field in the WFO classification can also be
   searched (see above).

[1]: https://wfoplantlist.org/
[2]: https://arctos.database.museum/search.cfm?guid_prefix=UAM:Herb,UAMb:Herb,UAM:Myco,UAM:Alg
[3]: https://handbook.arctosdb.org/how_to/How_to_Search_for_Specimens_with_Identification_and_Taxonomy.html#any-taxon-id-common-name
[4]: https://arctos.database.museum/taxonomy.cfm

