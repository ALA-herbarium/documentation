# Data import

## Communicating with specimen/data donors

Here is a template for requesting data:

```
Here are the columns for data for your gift specimens. Having all of
these (except the ‘opt’ional ones) will greatly speed up importing your
data into Arctos.

 * collector 1                        : string/CV
 * collector 2 (opt)                  : string/CV
 * collector 3 (opt)                  : string/CV
 * collector 4 (opt)                  : string/CV
 * collector's collection code/number : string
 * verbatim collection date           : string
 * begin collection date              : yyyy-mm-dd
 * end collection date                : yyyy-mm-dd
 * species                            : string/CV
 * det by name (opt)                  : string/CV
 * det by date (opt)                  : yyyy-mm-dd
 * higher geography                   : string/CV
 * locality (fine scale to broad)     : string
 * habitat (opt)                      : string
 * longitude (opt)                    : d.ddd
 * latitude (opt)                     : d.ddd
 * max error in m (needed if coords)  : integer
 * GPS datum      (needed if coords)  : string
 * min elev in m (opt)                : integer
 * max elev in m (opt)                : integer

The data type is given above in the second column. “CV” means controlled
vocabulary. If you have the time to look up the acceptable strings in
Arctos, I’d be very grateful, but I do understand this is an extra step,
and string data is fine. For:

 * Person names:     https://arctos.database.museum/agent.cfm
 * Higher geography: https://arctos.database.museum/place.cfm
   (Mode = geography, and Assertable Geography = yes. This is simply
    the finest scale gepgraphic area that is in Arctos - could simply be
    e.g. “United States, Alaska”)
 * Taxonomy:         https://arctos.database.museum/taxonomy.cfm

If you do look up these CV values, please also indicate somehow whether
the correct name or species is not found in Arctos - I’ll add it if it
is not yet in the DB.
```
