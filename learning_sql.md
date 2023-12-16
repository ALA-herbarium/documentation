# Learning SQL for Arctos

**1.** The Arctos SQL interface tool is at [here][1]

**2.** Write your SQL in an editor with syntax coloring, then paste it
into the box. Good, free coding editors are [BBEdit for Mac][2], and
[NotePad++ for Windows][3], but there are thousands of others to
choose from.

**3.** As an Arctos user (i.e., not a developer) we can only use the `SELECT`
statement of SQL. This greatly reduces what you have to learn. 

**4.** You will find that almost all the data you need to query is in a
single table in Arctos called `flat` - this is a composite, flattened
table made from the tens (hundreds) of tables in Arctos. This table also
greatly reduces what you have to learn (at first) - you do not need to
make cross-table `JOIN`s in your SQL.  To see the fields in `flat` enter:

```sql
SELECT * FROM flat LIMIT 1
```

(do not omit the `LIMIT 1`!)

**5.** A basic `SELECT` statement goes like this:

```sql
SELECT   <output fields>
FROM     <table>
WHERE    <some set of logical filters>
ORDER BY <some output fields to sort by>
LIMIT    <how many lines you want>
```

 * Arctos uses PostgreSQL-favor SQL. 
 * Spacing and line breaks are not important.
 * SQL requires a semicolon at the end of a query, but this can be
   omitted in the Arctos box. 
 * `WHERE` and `ORDER BY` and LIMIT are optional, but be careful not
   to ask for a query that gives 100 MBs of results by mistake; use
   LIMIT as you develop your SQL.

An example:

```sql
SELECT guid, scientific_name, family
FROM flat
WHERE (dec_lat  > 50   AND
       dec_lat  < 60   AND
       dec_long < -160 AND
       dec_long > -170)
  AND  began_date > '2010-01-01'
  AND  guid_prefix = 'UAM:Herb'
ORDER BY family, scientific_name
LIMIT 100
```

**6.** Click the CSV button if you want to download the results.

**7.** More resources:

 * The official [Arctos cheat sheet][4]
 * Our [ALA collection of SQL for Arctos][5]
 * [W3 schools tutorial][6], one of thousands of online tutorials


[1]: https://arctos.database.museum/tools/userSQL.cfm
[2]: https://www.barebones.com/products/bbedit/
[3]: https://notepad-plus-plus.org/
[4]: https://docs.google.com/document/d/15e3b8WNErFPqg1SW-QNq0nI_RjiEEZjWQDznxIJNFHE
[5]: https://github.com/ALA-herbarium/arctos-tools/tree/main/sql
[6]: https://www.w3schools.com/sql/default.asp
