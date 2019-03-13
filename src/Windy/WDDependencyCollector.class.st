"
I am a library visitor that collects library dependencies recursively.
"
Class {
	#name : #WDDependencyCollector,
	#superclass : #Object,
	#instVars : [
		'visitedLibraries'
	],
	#category : #'Windy-Core'
}

{ #category : #visiting }
WDDependencyCollector >> acceptLibrary: aWDLibrary [ 
	
	| libraryImports |
	aWDLibrary isNull ifTrue: [ ^ self ].
	((aWDLibrary name beginsWith: 'C:\Windows\SYSTEM32')
		or: [self visitedLibraries includes: aWDLibrary])
			ifTrue: [ ^ self ].
	self visitedLibraries add: aWDLibrary.

	aWDLibrary isNull ifTrue: [ ^ self ].
	
	libraryImports := aWDLibrary imports.
	libraryImports do: [ :each |
		each importedLibrary accept: self ]
]

{ #category : #accessing }
WDDependencyCollector >> visitedLibraries [
	^ visitedLibraries ifNil: [ visitedLibraries := Set new ]
]
