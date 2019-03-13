Class {
	#name : #WinTypesHelpers,
	#superclass : #SharedPool,
	#classVars : [
		'BYTE',
		'DWORD',
		'ULONGLONG',
		'WORD'
	],
	#category : #Windy
}

{ #category : #'class initialization' }
WinTypesHelpers class >> initialize [

	BYTE := #uint8.
	WORD := #uint16.
	DWORD := #uint32.
	
	ULONGLONG := #uint64
]
