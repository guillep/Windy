Class {
	#name : #WDImageSectionHeader,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_CHARACTERISTICS',
		'OFFSET_MISC',
		'OFFSET_NAMECHAR1',
		'OFFSET_NAMECHAR2',
		'OFFSET_NAMECHAR3',
		'OFFSET_NAMECHAR4',
		'OFFSET_NAMECHAR5',
		'OFFSET_NAMECHAR6',
		'OFFSET_NAMECHAR7',
		'OFFSET_NAMECHAR8',
		'OFFSET_NUMBEROFLINENUMBERS',
		'OFFSET_NUMBEROFRELOCATIONS',
		'OFFSET_POINTERTOLINENUMBERS',
		'OFFSET_POINTERTORAWDATA',
		'OFFSET_POINTERTORELOCATIONS',
		'OFFSET_SIZEOFRAWDATA',
		'OFFSET_VIRTUALADDRESS'
	],
	#pools : [
		'WinTypesHelpers'
	],
	#category : #Windy
}

{ #category : #'field definition' }
WDImageSectionHeader class >> fieldsDesc [

	^ #(
	BYTE NameChar1;
	BYTE NameChar2;
	BYTE NameChar3;
	BYTE NameChar4;
	BYTE NameChar5;
	BYTE NameChar6;
	BYTE NameChar7;
	BYTE NameChar8;
  "union {
    DWORD PhysicalAddress;
    DWORD VirtualSize;
  }"DWORD Misc;
  DWORD VirtualAddress;
  DWORD SizeOfRawData;
  DWORD PointerToRawData;
  DWORD PointerToRelocations;
  DWORD PointerToLinenumbers;
  WORD  NumberOfRelocations;
  WORD  NumberOfLinenumbers;
  DWORD Characteristics;)
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> Characteristics [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CHARACTERISTICS
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> Characteristics: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CHARACTERISTICS put: anObject
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> Misc [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_MISC
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> Misc: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_MISC put: anObject
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> NameChar1 [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_NAMECHAR1
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> NameChar1: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_NAMECHAR1 put: anObject
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> NameChar2 [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_NAMECHAR2
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> NameChar2: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_NAMECHAR2 put: anObject
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> NameChar3 [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_NAMECHAR3
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> NameChar3: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_NAMECHAR3 put: anObject
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> NameChar4 [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_NAMECHAR4
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> NameChar4: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_NAMECHAR4 put: anObject
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> NameChar5 [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_NAMECHAR5
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> NameChar5: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_NAMECHAR5 put: anObject
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> NameChar6 [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_NAMECHAR6
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> NameChar6: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_NAMECHAR6 put: anObject
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> NameChar7 [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_NAMECHAR7
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> NameChar7: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_NAMECHAR7 put: anObject
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> NameChar8 [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_NAMECHAR8
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> NameChar8: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_NAMECHAR8 put: anObject
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> NumberOfLinenumbers [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_NUMBEROFLINENUMBERS
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> NumberOfLinenumbers: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_NUMBEROFLINENUMBERS put: anObject
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> NumberOfRelocations [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_NUMBEROFRELOCATIONS
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> NumberOfRelocations: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_NUMBEROFRELOCATIONS put: anObject
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> PointerToLinenumbers [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_POINTERTOLINENUMBERS
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> PointerToLinenumbers: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_POINTERTOLINENUMBERS put: anObject
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> PointerToRawData [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_POINTERTORAWDATA
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> PointerToRawData: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_POINTERTORAWDATA put: anObject
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> PointerToRelocations [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_POINTERTORELOCATIONS
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> PointerToRelocations: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_POINTERTORELOCATIONS put: anObject
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> SizeOfRawData [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SIZEOFRAWDATA
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> SizeOfRawData: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SIZEOFRAWDATA put: anObject
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> VirtualAddress [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_VIRTUALADDRESS
]

{ #category : #'accessing structure variables' }
WDImageSectionHeader >> VirtualAddress: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_VIRTUALADDRESS put: anObject
]

{ #category : #testing }
WDImageSectionHeader >> containsAddress: anAddress [

	^ anAddress asInteger
		between: self VirtualAddress asInteger
		and: (self VirtualAddress + self Misc) asInteger
]

{ #category : #mapping }
WDImageSectionHeader >> mapAddress: anAddress inLibrary: aWindowsLibrary [ 

	^ aWindowsLibrary MappedAddress + self offset + anAddress
]

{ #category : #accessing }
WDImageSectionHeader >> name [
	
	^ ByteString streamContents: [ :str |
		str nextPut: self NameChar1 asCharacter.
		str nextPut: self NameChar2 asCharacter.
		str nextPut: self NameChar3 asCharacter.
		str nextPut: self NameChar4 asCharacter.
		str nextPut: self NameChar5 asCharacter.
		str nextPut: self NameChar6 asCharacter.
		str nextPut: self NameChar7 asCharacter.
		str nextPut: self NameChar8 asCharacter ]
]

{ #category : #accessing }
WDImageSectionHeader >> offset [
	
	^ self PointerToRawData - self VirtualAddress
]
