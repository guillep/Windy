"
I represent the main header of a library of 64bits.
https://docs.microsoft.com/en-us/windows/desktop/api/WinNT/ns-winnt-_image_nt_headers

typedef struct _IMAGE_NT_HEADERS64 {
    DWORD Signature;
    IMAGE_FILE_HEADER FileHeader;
    IMAGE_OPTIONAL_HEADER64 OptionalHeader;
} IMAGE_NT_HEADERS64, *PIMAGE_NT_HEADERS64;
"
Class {
	#name : #WDHeader64,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_FILEHEADER',
		'OFFSET_OPTIONALHEADER',
		'OFFSET_SIGNATURE'
	],
	#pools : [
		'WinTypesHelpers'
	],
	#category : #'Windy-Structures'
}

{ #category : #'field definition' }
WDHeader64 class >> fieldsDesc [

	^ #(
	DWORD Signature;
	#WDHeader       FileHeader;
	#WDOptionalHeader64 OptionalHeader;)
]

{ #category : #'accessing structure variables' }
WDHeader64 >> FileHeader [
	"This method was automatically generated"
	^ WDHeader fromHandle: (handle referenceStructAt: OFFSET_FILEHEADER length: WDHeader byteSize)
]

{ #category : #'accessing structure variables' }
WDHeader64 >> FileHeader: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_FILEHEADER put: anObject getHandle length: WDHeader byteSize
]

{ #category : #'accessing structure variables' }
WDHeader64 >> OptionalHeader [
	"This method was automatically generated"
	^ WDOptionalHeader64 fromHandle: (handle referenceStructAt: OFFSET_OPTIONALHEADER length: WDOptionalHeader64 byteSize)
]

{ #category : #'accessing structure variables' }
WDHeader64 >> OptionalHeader: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_OPTIONALHEADER put: anObject getHandle length: WDOptionalHeader64 byteSize
]

{ #category : #'accessing structure variables' }
WDHeader64 >> Signature [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SIGNATURE
]

{ #category : #'accessing structure variables' }
WDHeader64 >> Signature: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SIGNATURE put: anObject
]
