Class {
	#name : #WDHeader,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_CHARACTERISTICS',
		'OFFSET_MACHINE',
		'OFFSET_NUMBEROFSECTIONS',
		'OFFSET_NUMBEROFSYMBOLS',
		'OFFSET_POINTERTOSYMBOLTABLE',
		'OFFSET_SIZEOFOPTIONALHEADER',
		'OFFSET_TIMEDATESTAMP'
	],
	#pools : [
		'WinTypesHelpers'
	],
	#category : #Windy
}

{ #category : #'field definition' }
WDHeader class >> fieldsDesc [

	^ #(
	WORD  Machine;
	WORD  NumberOfSections;
	DWORD TimeDateStamp;
	DWORD PointerToSymbolTable;
	DWORD NumberOfSymbols;
	WORD SizeOfOptionalHeader;
	WORD Characteristics;)
]

{ #category : #'accessing structure variables' }
WDHeader >> Characteristics [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_CHARACTERISTICS
]

{ #category : #'accessing structure variables' }
WDHeader >> Characteristics: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_CHARACTERISTICS put: anObject
]

{ #category : #'accessing structure variables' }
WDHeader >> Machine [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_MACHINE
]

{ #category : #'accessing structure variables' }
WDHeader >> Machine: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_MACHINE put: anObject
]

{ #category : #'accessing structure variables' }
WDHeader >> NumberOfSections [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_NUMBEROFSECTIONS
]

{ #category : #'accessing structure variables' }
WDHeader >> NumberOfSections: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_NUMBEROFSECTIONS put: anObject
]

{ #category : #'accessing structure variables' }
WDHeader >> NumberOfSymbols [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_NUMBEROFSYMBOLS
]

{ #category : #'accessing structure variables' }
WDHeader >> NumberOfSymbols: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_NUMBEROFSYMBOLS put: anObject
]

{ #category : #'accessing structure variables' }
WDHeader >> PointerToSymbolTable [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_POINTERTOSYMBOLTABLE
]

{ #category : #'accessing structure variables' }
WDHeader >> PointerToSymbolTable: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_POINTERTOSYMBOLTABLE put: anObject
]

{ #category : #'accessing structure variables' }
WDHeader >> SizeOfOptionalHeader [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_SIZEOFOPTIONALHEADER
]

{ #category : #'accessing structure variables' }
WDHeader >> SizeOfOptionalHeader: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_SIZEOFOPTIONALHEADER put: anObject
]

{ #category : #'accessing structure variables' }
WDHeader >> TimeDateStamp [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_TIMEDATESTAMP
]

{ #category : #'accessing structure variables' }
WDHeader >> TimeDateStamp: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_TIMEDATESTAMP put: anObject
]
