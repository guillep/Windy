"
I represent a structure of type IMAGE_IMPORT_DESCRIPTOR.

https://docs.microsoft.com/en-us/previous-versions/ms809762(v=msdn.10)#pe-file-imports

I am obtained from the import data section and contain the name of the imported library.

# Implementation Details

- DWORD Characteristics
At one time, this may have been a set of flags. However, Microsoft changed its meaning and never bothered to update WINNT.H. This field is really an offset (an RVA) to an array of pointers. Each of these pointers points to an IMAGE_IMPORT_BY_NAME structure.

- DWORD TimeDateStamp
The time/date stamp indicating when the file was built.

- DWORD ForwarderChain
This field relates to forwarding. Forwarding involves one DLL sending on references to one of its functions to another DLL. For example, in Windows NT, NTDLL.DLL appears to forward some of its exported functions to KERNEL32.DLL. An application may think it's calling a function in NTDLL.DLL, but it actually ends up calling into KERNEL32.DLL. This field contains an index into FirstThunk array (described momentarily). The function indexed by this field will be forwarded to another DLL. Unfortunately, the format of how a function is forwarded isn't documented, and examples of forwarded functions are hard to find.

- DWORD Name
This is an RVA to a NULL-terminated ASCII string containing the imported DLL's name. Common examples are ""KERNEL32.DLL"" and ""USER32.DLL"".

- PIMAGE_THUNK_DATA FirstThunk
This field is an offset (an RVA) to an IMAGE_THUNK_DATA union. In almost every case, the union is interpreted as a pointer to an IMAGE_IMPORT_BY_NAME structure. If the field isn't one of these pointers, then it's supposedly treated as an export ordinal value for the DLL that's being imported. It's not clear from the documentation if you really can import a function by ordinal rather than by name.
"
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
	#category : #'Windy-Core'
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
