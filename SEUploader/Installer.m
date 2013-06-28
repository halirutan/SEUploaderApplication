(* Mathematica source file *)
(* :Author: patrick *)
(* :Date: 6/28/13 *)

If[$VersionNumber < 9,
    Print["This works only in Mathematica version 9"],

    Block[{url, file},
        url = "https://github.com/halirutan/SEUploaderApplication/archive/master.zip";
        file = URLSave[url, FileNameJoin[{$TemporaryDirectory, "master.zip"}]];
        If[Not[FileExistsQ[file]],
            Print["Couldn't download resource"];
            Return[$Failed]
        ];
        ExtractArchive[file, $TemporaryDirectory];
        CopyDirectory[FileNameJoin[{$TemporaryDirectory, "SEUploaderApplication-master", "SEUploader"}],
            FileNameJoin[{$UserAddOnsDirectory, "Applications", "SEUploader"}]];
        DeleteDirectory[FileNameJoin[{$TemporaryDirectory, "SEUploaderApplication-master"}]];
        DeleteFile[file];
        Print["Please restart Mathematica to see the palette in the Palette menu"]
    ]
]