# Editing locality data

The locality model in Arctos is tricky and great care is needed when
editing. When you edit either a collecting event (which holds date and
habitat info), or a locality (coordinates, description, elevation) you
may be affecting many other specimen records, which may belong to
other collections.

```
SPECIMEN_RECORD  ---->  COLLECTING_EVENT  ---->  LOCALITY
                 n   1                    n   1
```

## One-by-one edits to locality

E.g., adding elevation to a locality

 * From a specimen record, click Edit in the Place and Time panel. In the
   subsequent popup, the Event info is on the left and the Locality
   info is on the right. 
 * In the red box, click on ‘xxx catalog records’ and review the
   records that will be affected by your edit. Confirm that you indeed
   want to edit all of them.
 * Click ‘Edit Locality’ and make the edits required (e.g., adding min
   elev., max elev, and ‘m’).
 * Return to the catalog record and confirm the edit is as desired.

## Multiple edits to locality

Unless you are very confident you know what you are doing, do not use
the Bulk Edit Locality Tool, because this tool may unintentionally
affect thousands of records that are not yours.  The safer way to
modify locality is via the Record Event Loader. This will create a new
locality for each GUID. If several are part of the same Event (same
time, same place), the multiple new localities and events will be
collapsed into a single event and locality by the daily Arctos
clean-up scripts.

 * Save all the existing Event and Locality data into a file using
   either a SQL script, or the main Arctos search with the “[Tools] ->
   Download -> For Record Bulkloader”
 * Edit the fields until they match the fields in the
   [Record Event Loader](https://arctos.database.museum/loaders/BulkloadSpecimenEvent.cfm?action=ld). Generally you will want:
    * `guid`
    * `specimen_event_type`
    * `assigned_by_agent`
    * `assigned_date`
    * `collecting_method`
    * `collecting_source`
    * `habitat`
    * `verbatim_date`
    * `verbatim_locality`
    * `began_date`
    * `ended_date`
    * `primary_spatial_data` = “point-radius”
    * `orig_lat_long_units`
    * `datum`
    * `max_error_distance`
    * `max_error_units`
    * `georeference_protocol`
    * `dec_lat`
    * `dec_long`
    * `spec_locality`
    * `orig_elev_units`
    * `minimum_elevation`
    * `maximum_elevation`
    * `higher_geog`
 * If you are adding data (e.g. elevation), insert the correct values
   into the upload file at this time.
 * Upload CSV into the bulkloader (remember, the line endings must be
   ‘Mac’, i.e., `\r`)
 * Review, set status to load, load, wait
 * Check that the updated data now appears for the records you wanted to edit.
 * **NOTE**: this tool will _add_ a new collecting event. The original
     one will still be there, in a gray box. The only way to delete
     this is manually, one-by-one. Because of this, the one-by-one
     edit method (above) is generally recommended.
