# History and current status of the ALAAC identifier series

## The ALAAC book

A binder known as the ALAAC book contains pages recording the
allocation of series of ALAAC numbers to collections by particular
people (in early years) and to particular accession sets (since
Arctos).  These pages are being [scanned][1] (the photos named to
reflect the ALAAC series within them), and [transcribed][2].

Note that an old page in the front of the ALAAC book says there was a
Wordstar file called `ACC.LIS` on the ‘Kaypro’. We currently have no
idea if there is a copy of this file anywhere.  However, the ALAAC
notes from 1987-1992 are a dot-matrix printout, and probably
correspond to the contents of this file.

The pages in the book are divided into Vascular plants, Bryophytes,
Lichens, Algae, and a tiny Fungi section.  The early mixed,
non-prefix pages are in the Vascular section.

Recorded fields (date, collector, locality, accession, category)
varied over the years. The ‘Category’ codes gave information about the
origin and nature of the series: S = staff, E = exchange, G = gift, GD
= gift for determination, C = student, P = purchase, O = other.  Loans
were not added to the collection and thus not recorded in the book.

## ALAAC History

The ALA accession (ALAAC) series was started at ‘1’ for collections in
the 1950s, with no prefix. These continued until 1981. The last ‘no
prefix’ number is **99056**. This original series contained vascular
plants and cryptogams. In the main pages, the moss series were noted
only as “Mosses”, but on separate “Bryophyte” pages the details of
these series were given. For example, on page 2 of the main pages,
series 7426-7659 were marked as Mosses, but on page 1 of the Bryophyte
pages, series 7426-7659 are listed as from “Shelter - Interior Alaska,
etc”.

Towards the end of the ‘no prefix’ series, mosses and lichen series
were no longer noted in the main list, but the numbers were simply
missing. The series appeared only on the bryophyte and lichen
pages.  The last moss series was: 98774-98836 in 1982.  The last
lichen series was 98727-98772 in 1982.

In March 1982 the total number of allocated series numbers were
calculated -- vascular (68,725), bryophytes (variously 18067, 17895,
17832 - unclear which), lichens (9709), algae (861) -- and the new
prefix series used the next number from this total as the starting
number. The four prefix formations: ‘A’lgae, ‘B’ryophytes, ‘L’ichens,
and ‘V’ascular plants.  The last number in the no-prefix series, and
the starting numbers in the prefix series were:

 * Algae: **65276**; next: **A862**
 * Bryophytes: **98836**; next: **B17896**
 * Lichens: **98772**; next: **L9710**   
 * Vascular: **99056**; next: **V68726**

(In theory, 861 + 17895 + 9709 + 68725 should sum to 99056. They
actually sum to 97190, indicating about 2,000 numbers missed from the
overall sequence.)

As of today (2024-07-31), the last series given out end in: A11068,
B43625, L39354, and V182504. Theoretically, these mark the total
numbers allocated in each class, including (non-sequential) series
within the non-prefix period. Hence a total of 276,551 ALAAC numbers
should have been allocated. For reference, there are currently 269,924
ALA Arctos records.

## Discrepancies with Arctos data
 
There are thousands of errors in the application of and transcription
of ALAACs:

 * The last official no-prefix value allocated was 99056
   (vascular). However there are 2,470 no-prefix ALAACs in Arctos
   larger than 99056, ranging from 99062 to 6744136 (`gawk
   '$0~/^[ 0]*[1-9]+/ {if(gensub(/^[ 0]+/,"","G",$0)+0>99056)x++}
   END{print x}' alaac_values` and `gawk '$0~/^[ 0]*[1-9]+/ {print
   gensub(/^[ 0]+/,"","G",$0)}' alaac_values | sort -n | less`)
 
## Moving forward

Keeping track of four separate series is hard and has generated many
errors in bookkeeping, what was stamped on the sheets, and in data
entry into Arctos. There is no strong reason now to maintain separate
Accession numbers. Moving to a unified accession number series,
beginning at, say, 280,001, and keeping only a digital tally (well
backed up!), will greatly facilitate managing ALAACs.  Note that
before then, the 32 Arctos records with erroneous ALAACs of >= 280,001
need to be fixed.
   
[1]: https://drive.google.com/drive/u/0/folders/18aIDJoriQS0e5jXET8qsaONnsi1P_kup
[2]: https://docs.google.com/spreadsheets/d/1S9LbdYfRegjyaFLVTWbc-Mk2qiBk-X__Mb6NYavRxaM
