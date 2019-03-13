Class {
	#name : #WDImport,
	#superclass : #FFIExternalStructure,
	#instVars : [
		'library'
	],
	#classVars : [
		'OFFSET_CHARACTERISTICS',
		'OFFSET_FIRSTTHUNK',
		'OFFSET_FORWARDERCHAIN',
		'OFFSET_NAME',
		'OFFSET_TIMEDATESTAMP'
	],
	#pools : [
		'WinTypesHelpers'
	],
	#category : #Windy
}

{ #category : #'field definition' }
WDImport class >> fieldsDesc [

	^ #(
	DWORD  Characteristics
	DWORD  TimeDateStamp
	DWORD ForwarderChain
	DWORD Name
	DWORD FirstThunk)
]

{ #category : #'accessing structure variables' }
WDImport >> Characteristics [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CHARACTERISTICS
]

{ #category : #'accessing structure variables' }
WDImport >> Characteristics: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CHARACTERISTICS put: anObject
]

{ #category : #'accessing structure variables' }
WDImport >> FirstThunk [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_FIRSTTHUNK
]

{ #category : #'accessing structure variables' }
WDImport >> FirstThunk: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_FIRSTTHUNK put: anObject
]

{ #category : #'accessing structure variables' }
WDImport >> ForwarderChain [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_FORWARDERCHAIN
]

{ #category : #'accessing structure variables' }
WDImport >> ForwarderChain: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_FORWARDERCHAIN put: anObject
]

{ #category : #'accessing structure variables' }
WDImport >> Name [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_NAME
]

{ #category : #'accessing structure variables' }
WDImport >> Name: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_NAME put: anObject
]

{ #category : #'accessing structure variables' }
WDImport >> TimeDateStamp [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_TIMEDATESTAMP
]

{ #category : #'accessing structure variables' }
WDImport >> TimeDateStamp: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_TIMEDATESTAMP put: anObject
]

{ #category : #accessing }
WDImport >> importedLibrary [
	
	^ WDLibrary loadFileNamedWithSystemLookup: self name "path: library path"
]

{ #category : #testing }
WDImport >> isEmpty [ 
	^ self Characteristics = 0 and: [ 
		self TimeDateStamp = 0 and: [ 
			self ForwarderChain = 0 and: [ 
				self Name = 0 and: [ 
					self FirstThunk = 0 ] ] ] ]
]

{ #category : #accessing }
WDImport >> library [
	^ library
]

{ #category : #accessing }
WDImport >> library: aWDLibrary [ 
	
	library := aWDLibrary
]

{ #category : #accessing }
WDImport >> name [
	
	^ (library mapAddress: self Name) readString
]
