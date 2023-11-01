# Image management

## Poor images

 * _If_ a record is found for which there is i) a low resolution DNG or
   JPG, or ii) an out of focus DNG or JPG, or iii) the wrong image
   for the record (according to barcode and specimen metadata)
    _then_:
    * _if_ the record _also_ has better quality media attached
      _then_: 
       * Delete the poor quality media (see below)
    * _else_:
       * Enter the GUID into the [GoogleSheet][1] we are using to
         track these cases

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

[1]: https://docs.google.com/spreadsheets/d/1XeUaASrotaScyUFZGNRvRBPM7411-73SwoVvRQDm_oA
