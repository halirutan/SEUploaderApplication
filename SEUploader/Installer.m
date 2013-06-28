(* Mathematica source file *)
(* :Author: patrick *)
(* :Date: 6/28/13 *)

If[$VersionNumber < 9,
    Print["This works only in Mathematica version 9"],

    Block[{url,
        zipFile = FileNameJoin[{$TemporaryDirectory, "master.zip"}],
        extractedDir = FileNameJoin[{$TemporaryDirectory, "SEUploaderApplication-master"}]},

        url = "https://github.com/halirutan/SEUploaderApplication/archive/master.zip";
        If[FileExistsQ[zipFile] || DirectoryQ[extractedDir],
            Print["Error, one of the following already exists. Please remove these files/directories and start again:"];
            Print[zipFile];
            Print[extractedDir];
            Abort[];
        ];

        file = URLSave[url, zipFile];
        If[Not[FileExistsQ[file]],
            Print["Couldn't download resource"];
            Abort[];
        ];
        ExtractArchive[file, $TemporaryDirectory];
        CopyDirectory[FileNameJoin[{$TemporaryDirectory, "SEUploaderApplication-master", "SEUploader"}],
            FileNameJoin[{$UserAddOnsDirectory, "Applications", "SEUploader"}]];
        DeleteDirectory[FileNameJoin[{$TemporaryDirectory, "SEUploaderApplication-master"}], DeleteContents -> True];
        DeleteFile[file];
        Print["Please restart Mathematica to see the palette in the Palette menu"]
    ]
]