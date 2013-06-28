SEUploaderApplication
=====================

This is an temporary fix for the broken SEUploader. In contrast to the old *single palette* solution, this comes
with some additional java libraries which help to get the uploader working again.

Installation:

1.
==

Remove the old palette from your system by searching for it and deleting it. You should be able to find the place of
the old palette by evaluating

       FileNames["*Uploader.nb", $UserBaseDirectory, Infinity]

After that you can call `DeleteFile` on this and after a restart of *Mathematica* there shouldn't be and an entry in the
Palettes menu anymore.

2.
===

Evaluate the following

    Get["http://goo.gl/J7TQO"]

This evaluates the install code under "https://raw.github.com/halirutan/SEUploaderApplication/master/SEUploader/Installer.m"
and puts the new SEUploader palette application in your local user directory.

3.
===

Restart *Mathematica* and use the palette