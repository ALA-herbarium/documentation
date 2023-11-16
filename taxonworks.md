# Taxonworks

## Creating _ex_ and _in_ for names

 1. Using the “_new task_” interface, create the valid name (T1). 
    * Add (just) a Person as an Author (the _ex_ person)
 2. Create another taxon of the same rank and name (T2). 
    * Give T2 an “invalidly published” status, or even better, specify
      the reason for invalid publication, e.g., “provisional” (this
      will remove the validation question).
    * Create a relationship to T1: click on “Show all” and select
      `validly published as` (= “_ICN_ validly published as”)
 3. Return to T1, and edit again.
    * Add a source Publication (the _in_ author).  This will trigger
      the label to be ‘recalculated’ as “taxon _ex_ person _in_
      publication”. If the author of the _in_ publication is the same
      as the _ex_ person, than that Person can be removed as an
      Author.  
      
The extra edit in 3 is necessary unfortunately: setting both
Publication and Author in step one, and performing step 2 will not
trigger the correct ex/in label.


      
