"
I am an exception representing the failure loading a library.
I contain the library name and a path.
If the path is nil, it means the failure happened when using the system library resolution.
"
Class {
	#name : #WDLibraryNotFound,
	#superclass : #Error,
	#instVars : [
		'library',
		'path'
	],
	#category : #Windy
}
