# Photostation

## Physical setup

**Full-sized herbarium sheets**

 * Camera stand high, its top aligned with bottom of ‘Herb sheet’ sticker
 * Horizontal boom at maximum extension
 * Place color strip in line with ruler
 * Position specimen against frame at the back, and snug with ruler
      on the right.
      
**Cryptogam envelopes**

 * Camera stand at lowest possible height (on bottom ‘stop’)
 * Horizontal boom at minimum extension (also on ‘stop’)
 * Place color strip on wooden frame, in middle
 * Position specimen:
    * Unfold envelope
    * Carefully remove specimen on card
    * Lay opened envelope against wooden frame, with label text on right
      side; adjust position so the barcode is in the exact middle
    * Place specimen on top of envelope, on left side; adjust so
         that it is close to middle but not obscuring barcode.

## Lights

Switch on large LED lamps

## Camera (Canon EOS 5D Mk IV)

**Settings**

 * Mode on main dial: M (for Manual exposure and aperture)
 * In Settings menu, set Autorotate to OFF
 * The following camera parameters are set by the script on the
    computer each time a photo is requested (using `gphoto2`): ISO (to
    200), White Balance (AWB), Aperture (f8), Shutter speed (~1/10),
    Focus mode (Manual).

**Set focus**

 * Make sure the camera lens is set to MF (Manual focus), and the USB
   connection is unplugged
 * Stand on a chair or on the table (!) and look into the viewfinder
 * Manually adjust the focus ring to set clear focus on the specimen
   parts nearest the center of the viewfinder. Do not worry if the
   label is slightly out of focus.
 * Once the images are being taken in production you may need to
   adjust the focus with tiny nudges, using trial and error, to get
   the best possible focus. 
 * If you encounter a very thick specimen, you may need to stand on
   the table again and readjust the gross focus.
 
## Troubleshooting

You may find sometimes that the script returns some garbled message
about not finding an image.  The camera can get ‘locked’ by the script
in certain situations and be unable to take an exposure. The surest
way to get out of this ‘lock’ is to switch off the camera, unplug the
camera USB, quit the script (Control-C), close the Terminal window,
and start the process again.
