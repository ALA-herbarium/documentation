# Identifiers

## NCBI

As of 2023, there is no longer a Genbank identifier type. Use
`identifier` and the **URL** of the Genbank (nucore) or Biosample
record at NCBI. Select “NCBI BioSample” or “NCBI Nucleotide (Genbank)”
as the `IssuedBy`. (2024-02-29: the Arctos [documentation][1] is out
of date).

If the SRA identifier has been given by an author, it can be combined
with another sample identifier in the
[search box](https://www.ncbi.nlm.nih.gov/sra/) to find the BioSample
ID. E.g. ‘[PRJNA1097346+AND+V115440](https://www.ncbi.nlm.nih.gov/sra/?term=PRJNA1097346+AND+V115440)’:
BioSample
[SAMN40867780](https://www.ncbi.nlm.nih.gov/biosample/SAMN40867780),
linked to from Arctos GUID
[UAM:Herb:9237](https://arctos.database.museum/guid/UAM:Herb:9237).

[1]: https://handbook.arctosdb.org/how_to/How-to-Link-Genetic-Data-To-And-From-Arctos.html
