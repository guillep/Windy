"
I implement an entry in the index of data directories, pointing to well known parts of a library.
I contain the address of the entry (VirtualAddress), and the amount of entries at that address (Size).

https://docs.microsoft.com/en-us/windows/desktop/api/winnt/ns-winnt-_image_data_directory

typedef struct _IMAGE_DATA_DIRECTORY {
  DWORD VirtualAddress;
  DWORD Size;
} IMAGE_DATA_DIRECTORY, *PIMAGE_DATA_DIRECTORY;
"
Class {
	#name : #WDImageDataDirectory,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_SIZE',
		'OFFSET_VIRTUALADDRESS'
	],
	#pools : [
		'WinTypesHelpers'
	],
	#category : #'Windy-Structures'
}

{ #category : #'field definition' }
WDImageDataDirectory class >> fieldsDesc [

	^ #(
	DWORD VirtualAddress;
	DWORD Size;)
]

{ #category : #'accessing structure variables' }
WDImageDataDirectory >> Size [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SIZE
]

{ #category : #'accessing structure variables' }
WDImageDataDirectory >> Size: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SIZE put: anObject
]

{ #category : #'accessing structure variables' }
WDImageDataDirectory >> VirtualAddress [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_VIRTUALADDRESS
]

{ #category : #'accessing structure variables' }
WDImageDataDirectory >> VirtualAddress: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_VIRTUALADDRESS put: anObject
]
