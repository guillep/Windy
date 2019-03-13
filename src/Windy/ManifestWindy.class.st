"
This package implements basic Windows' PE (Portable Executable) file format.
This format provides basic dynamic library (dll) access that is used for debugging purposes such as checking a library's list of symbols, or list its dependencies.

This format is described in Microsoft's MSDN.
A good starting point is the blogpost https://docs.microsoft.com/en-us/previous-versions/ms809762(v=msdn.10)#pe-file-imports
"
Class {
	#name : #ManifestWindy,
	#superclass : #PackageManifest,
	#category : #'Windy-Manifest'
}
