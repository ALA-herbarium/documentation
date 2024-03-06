# The Arctos data model

This is an overview of the Arctos data model, with key tables, and how
some of the key data elements appear in the `flat` table. It is not a
full ER diagram, more a map of the territory. The diagram is also
available as a [PDF][1] with clickable links to the relevant table
documentation in Arctos.

![Arctos structure](img/data_model.jpg)

Key:

 * _outline boxes_: represent the panels within the Arctos catalog
   record page
 * _colored tables_: primary tables in the Arctos DB
 * _p. key_: primary key in the main, original data table
 * _f. key(s)_: foreign keys in the original data table
 * _fields_: other primary fields in the original data table
 * _flat_: the fields in `flat` which represent data from the original table
 * Edges:
    * n ➡ 1: multiple records of the first table relate to a single
      record in the target table
    * n ↔ n: multiple records of the first table relate to multiple
      record in the target table
    * 1 ↔ 1: a single record of the first table relates to a single
      record in the target table

The diagram was made with [GraphViz][2]. [Source](img/data_model.dot).

[1]: https://github.com/ALA-herbarium/documentation/raw/main/img/data_model.pdf
[2]: https://www.graphviz.org/
