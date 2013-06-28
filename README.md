SEUploaderApplication
=====================

This is an temporary fix for the broken SEUploader. In contrast to the old *single palette* solution, this comes
with some additional java libraries which help to get the uploader working again. To install it only 3 steps are
required:

## Step one

Remove the old palette from your system by searching for it and deleting it. You should be able to find the place of
the old palette by evaluating

       FileNames["*Uploader.nb", $UserBaseDirectory, Infinity]

After that you can call `DeleteFile` on this and after a restart of *Mathematica* there shouldn't be and an entry in the
Palettes menu anymore.

## Step two

Evaluate the following

    Get["http://goo.gl/J7TQO"]

This evaluates the install code under "https://raw.github.com/halirutan/SEUploaderApplication/master/SEUploader/Installer.m"
and puts the new SEUploader palette application in your local user directory.

## Step three

Restart *Mathematica* and use the palette