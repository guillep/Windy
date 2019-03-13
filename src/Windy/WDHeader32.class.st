Class {
	#name : #WDHeader32,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_FILEHEADER',
		'OFFSET_OPTIONALHEADER',
		'OFFSET_SIGNATURE'
	],
	#pools : [
		'WinTypesHelpers'
	],
	#category : #Windy
}

{ #category : #'field definition' }
WDHeader32 class >> fieldsDesc [

	^ #(
	DWORD Signature;
	#WDHeader       FileHeader;
	#WDOptionalHeader32 OptionalHeader;)
]

{ #category : #'accessing structure variables' }
WDHeader32 >> FileHeader [
	"This method was automatically generated"
	^ WDHeader fromHandle: (handle referenceStructAt: OFFSET_FILEHEADER length: WDHeader byteSize)
]

{ #category : #'accessing structure variables' }
WDHeader32 >> FileHeader: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_FILEHEADER put: anObject getHandle length: WDHeader byteSize
]

{ #category : #'accessing structure variables' }
WDHeader32 >> OptionalHeader [
	"This method was automatically generated"
	^ WDOptionalHeader32 fromHandle: (handle referenceStructAt: OFFSET_OPTIONALHEADER length: WDOptionalHeader32 byteSize)
]

{ #category : #'accessing structure variables' }
WDHeader32 >> OptionalHeader: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_OPTIONALHEADER put: anObject getHandle length: WDOptionalHeader32 byteSize
]

{ #category : #'accessing structure variables' }
WDHeader32 >> Signature [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SIGNATURE
]

{ #category : #'accessing structure variables' }
WDHeader32 >> Signature: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SIGNATURE put: anObject
]
