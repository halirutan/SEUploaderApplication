SEUploaderApplication
=====================

This is an temporary fix for the broken SEUploader. In contrast to the old *single palette* solution, this comes
with some additional java libraries which help to get the uploader working again. To install it only 3 steps are
required:

## Step one

Remove the old palette from your system by searching for it and deleting it. There are two possibilities: 
If you already used the *palette application* from this repository, you should delete the directory

    dirname = If[DirectoryQ[#], #] &@ FileNameJoin[{$UserAddOnsDirectory, "Applications", "SEUploader"}]

If you think that you still have an installation of the very first (one-palette file) version of the SE Uploader installed
then you should be able to find the place of this by evaluating

    file = FileNames["*Uploader.nb", $UserBaseDirectory, Infinity]

If either of these two commands result in a directory or a file, you can delete them by calling

    DeleteDirectory[dirname, DeleteContents->True]
    
or, if you still have the SE Uploader `file`

    DeleteFile[file]

After a restart of *Mathematica* there shouldn't be any SE Uploader entry in the *Palettes* menu anymore.

## Step two

Evaluate the following

    Get["http://goo.gl/J7TQO"]

This evaluates the install code under "https://raw.github.com/halirutan/SEUploaderApplication/master/SEUploader/Installer.m"
and puts the new SEUploader palette application in your local user directory.

## Step three

Restart *Mathematica* and use the palette
