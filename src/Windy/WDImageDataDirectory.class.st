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
	#category : #Windy
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
