# Citations of specimens in a publication

A link can be made between a publication and a specimen. The link is
to a specific identification.  These can be done manually (using the
‘Manage citiations’ button on the publication page), or via a
[bulkloader][1].  For types, the former should be used to be sure the
taxonomy is correct.  For vouchers, or for specimens used in a
molecular analysis, using the most recent identification should be
sufficient, and the bulkloader can be employed if there are many
references to add.

To find the ‘top’ identification, use the User SQL:

```sql
SELECT guid, identificaiton_id FROM flat WHERE guid IN ('UAM:Herb:xxx', ...)
```

Then construct a csv file like this:

```
guid,use_identificationID,publicationID,type_status,status
UAM:Herb:10485,https://arctos.database.museum/guid/UAM:Herb:10485/IID191844,https://arctos.database.museum/publication/10012746,voucher,autoload
UAM:Herb:10489,https://arctos.database.museum/guid/UAM:Herb:10489/IID191848,https://arctos.database.museum/publication/10012746,voucher,autoload
```

See this [example paper][2]


[1]: https://arctos.database.museum/loaders/BulkloadCitations.cfm
[2]: https://arctos.database.museum/publication/10012746

