# Loans

How to model/enter data for loan-like situations (note, in Arctos
‘Loan’ means loan-like, and includes consumptive loans).

## Leaves removed and sent for destructive sampling

 * Create a Project with title, description, people, taxonomic names, etc. 
   ([example][1])
 * Create a “Loan-like transaction” of type consumable ([example][2])
    * enter contact info, etc.
    * add the project to it (on the right, panels in pale blue)
    * make the status ‘**closed**’ if the samples are being sent soon.
 * Add samples. In this process you will create a second ‘part’ in
   each of the catalog records, of type ‘leaf’, and disposition ‘used
   up’ - it is these parts that are attached to the ‘loan’, not the
   original specimens, which can still be found in the range.
    * At the bottom of the loan edit form is ‘[add items]’
    * Click this and search for the specimens to be sampled
    * Under the ‘[Tools]’ drop-down, select ‘Add to Transaction’
    * An ‘Add Items - Loan Summary’ form will appear.
    * In the SubsampleAs column, in the white box with a faint
      ‘partname’ in it, type ‘leaf’ (you can tab-complete to confirm
      that this is an allowed part type)
    * Check all rows you want to add, and click ‘Add all checked parts
      to transaction’
 * Review to make sure the project and transaction are now linked to
   the correct (used up, leaf) parts.

[1]: https://arctos.database.museum/project/10004347
[2]: https://arctos.database.museum/Loan.cfm?action=editLoan&transaction_id=21124022
