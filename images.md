# Image management

## Verifying images

If you would like to verify that the images are the correct ones for a
record, add an attribute to the record (either manually or using the
bulk loader): `type=processing history`, `value=verified to source`,
with the word ‘image’ somewhere in the Remarks, adding your username
and the date.

## Poor images

_If_ a record is found for which there is i) a low resolution DNG or
JPG, or ii) an out of focus DNG or JPG, or iii) the wrong image for
the record (according to barcode and specimen metadata) _then_:

 * _if_ the record _also_ has better quality media attached
   _then_: 
    * Delete the poor quality or incorrect media (see below)
 * _else_:
    * (Updated 2024-01-05): **(i)** Add an attribute to the record
      (either manually or using the bulk loader): `type=processing
      history`, `value=needs reimaging`. A remark is only needed in
      one situation: if the DNG is correct but the JPG is not (i.e.,
      JPG out of focus, low resolution, wrong specimen sheet), in
      which case include the words (upper or lower case) ‘regenerate’
      and ‘jpeg’ (or ‘jpg’); this information will permit the fixing
      of this quality issue without refinding the specimen and
      reimaging it. _Without_ this flag in the remarks, the specimen
      will be reimaged (adding new DNG and JPG), whatever the
      reason. **(ii)** _Delete_ all the incorrect, blurred, low
      resolution images, DNG and/or JPG (see below).

After reimaging, the ‘needs reimaging’ attributes can be removed from
many GUIDs as a batch, using the Attribute [bulk unload tool][1].

## Deleting media

In order to delete media, the link to the media is removed. The media
will remain on the server wherever that is (in our case it’s in a
directory on the TACC server).

 * In the main specimen record page click on ‘media details’ for the
   image
 * In the media details page (of URL form
   `https://arctos.database.museum/media/<integer>`) click ‘Edit media’
 * See note at bottom: “delete labels and relationships to delete media”. So... 
    * blank out the URLs of the image and preview
    * change the relationship from `shows cataloged_item` to `delete`
    * Save
 * Reload the main page to see that the desired image has gone.

[1]: https://arctos.database.museum/loaders/BulkUnLoadAttribute.cfm
