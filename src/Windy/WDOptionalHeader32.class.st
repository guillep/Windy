Class {
	#name : #WDOptionalHeader32,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_ADDRESSOFENTRYPOINT',
		'OFFSET_BASEOFCODE',
		'OFFSET_BASEOFDATA',
		'OFFSET_CHECKSUM',
		'OFFSET_DATADIRECTORY',
		'OFFSET_DLLCHARACTERISTICS',
		'OFFSET_FILEALIGNMENT',
		'OFFSET_IMAGEBASE',
		'OFFSET_LOADERFLAGS',
		'OFFSET_MAGIC',
		'OFFSET_MAJORIMAGEVERSION',
		'OFFSET_MAJORLINKERVERSION',
		'OFFSET_MAJOROPERATINGSYSTEMVERSION',
		'OFFSET_MAJORSUBSYSTEMVERSION',
		'OFFSET_MINORIMAGEVERSION',
		'OFFSET_MINORLINKERVERSION',
		'OFFSET_MINOROPERATINGSYSTEMVERSION',
		'OFFSET_MINORSUBSYSTEMVERSION',
		'OFFSET_NUMBEROFRVAANDSIZES',
		'OFFSET_SECTIONALIGNMENT',
		'OFFSET_SIZEOFCODE',
		'OFFSET_SIZEOFHEADERS',
		'OFFSET_SIZEOFHEAPCOMMIT',
		'OFFSET_SIZEOFHEAPRESERVE',
		'OFFSET_SIZEOFIMAGE',
		'OFFSET_SIZEOFINITIALIZEDDATA',
		'OFFSET_SIZEOFSTACKCOMMIT',
		'OFFSET_SIZEOFSTACKRESERVE',
		'OFFSET_SIZEOFUNINITIALIZEDDATA',
		'OFFSET_SUBSYSTEM',
		'OFFSET_WIN32VERSIONVALUE'
	],
	#pools : [
		'WinTypesHelpers'
	],
	#category : #Windy
}

{ #category : #'field definition' }
WDOptionalHeader32 class >> fieldsDesc [

	^ #(
	WORD								 Magic;
	BYTE								 MajorLinkerVersion;
	BYTE								 MinorLinkerVersion;
	DWORD								SizeOfCode;
	DWORD								SizeOfInitializedData;
	DWORD								SizeOfUninitializedData;
	DWORD								AddressOfEntryPoint;
	DWORD								BaseOfCode;
	DWORD								BaseOfData;
	DWORD								ImageBase;
	DWORD								SectionAlignment;
	DWORD								FileAlignment;
	WORD								 MajorOperatingSystemVersion;
	WORD								 MinorOperatingSystemVersion;
	WORD								 MajorImageVersion;
	WORD								 MinorImageVersion;
	WORD								 MajorSubsystemVersion;
	WORD								 MinorSubsystemVersion;
	DWORD								Win32VersionValue;
	DWORD								SizeOfImage;
	DWORD								SizeOfHeaders;
	DWORD								CheckSum;
	WORD								 Subsystem;
	WORD								 DllCharacteristics;
	DWORD								SizeOfStackReserve;
	DWORD								SizeOfStackCommit;
	DWORD								SizeOfHeapReserve;
	DWORD								SizeOfHeapCommit;
	DWORD								LoaderFlags;
	DWORD								NumberOfRvaAndSizes;
	"IMAGE_DATA_DIRECTORY"void* 		DataDirectory;)
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> AddressOfEntryPoint [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_ADDRESSOFENTRYPOINT
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> AddressOfEntryPoint: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_ADDRESSOFENTRYPOINT put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> BaseOfCode [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_BASEOFCODE
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> BaseOfCode: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_BASEOFCODE put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> BaseOfData [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_BASEOFDATA
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> BaseOfData: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_BASEOFDATA put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> CheckSum [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CHECKSUM
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> CheckSum: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CHECKSUM put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> DataDirectory [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DATADIRECTORY) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> DataDirectory: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DATADIRECTORY put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> DllCharacteristics [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_DLLCHARACTERISTICS
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> DllCharacteristics: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_DLLCHARACTERISTICS put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> FileAlignment [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_FILEALIGNMENT
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> FileAlignment: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_FILEALIGNMENT put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> ImageBase [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_IMAGEBASE
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> ImageBase: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_IMAGEBASE put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> LoaderFlags [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_LOADERFLAGS
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> LoaderFlags: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_LOADERFLAGS put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> Magic [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_MAGIC
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> Magic: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_MAGIC put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> MajorImageVersion [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_MAJORIMAGEVERSION
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> MajorImageVersion: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_MAJORIMAGEVERSION put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> MajorLinkerVersion [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_MAJORLINKERVERSION
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> MajorLinkerVersion: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_MAJORLINKERVERSION put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> MajorOperatingSystemVersion [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_MAJOROPERATINGSYSTEMVERSION
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> MajorOperatingSystemVersion: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_MAJOROPERATINGSYSTEMVERSION put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> MajorSubsystemVersion [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_MAJORSUBSYSTEMVERSION
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> MajorSubsystemVersion: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_MAJORSUBSYSTEMVERSION put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> MinorImageVersion [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_MINORIMAGEVERSION
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> MinorImageVersion: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_MINORIMAGEVERSION put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> MinorLinkerVersion [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_MINORLINKERVERSION
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> MinorLinkerVersion: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_MINORLINKERVERSION put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> MinorOperatingSystemVersion [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_MINOROPERATINGSYSTEMVERSION
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> MinorOperatingSystemVersion: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_MINOROPERATINGSYSTEMVERSION put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> MinorSubsystemVersion [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_MINORSUBSYSTEMVERSION
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> MinorSubsystemVersion: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_MINORSUBSYSTEMVERSION put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> NumberOfRvaAndSizes [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_NUMBEROFRVAANDSIZES
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> NumberOfRvaAndSizes: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_NUMBEROFRVAANDSIZES put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> SectionAlignment [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SECTIONALIGNMENT
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> SectionAlignment: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SECTIONALIGNMENT put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> SizeOfCode [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SIZEOFCODE
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> SizeOfCode: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SIZEOFCODE put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> SizeOfHeaders [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SIZEOFHEADERS
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> SizeOfHeaders: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SIZEOFHEADERS put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> SizeOfHeapCommit [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SIZEOFHEAPCOMMIT
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> SizeOfHeapCommit: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SIZEOFHEAPCOMMIT put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> SizeOfHeapReserve [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SIZEOFHEAPRESERVE
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> SizeOfHeapReserve: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SIZEOFHEAPRESERVE put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> SizeOfImage [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SIZEOFIMAGE
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> SizeOfImage: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SIZEOFIMAGE put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> SizeOfInitializedData [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SIZEOFINITIALIZEDDATA
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> SizeOfInitializedData: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SIZEOFINITIALIZEDDATA put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> SizeOfStackCommit [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SIZEOFSTACKCOMMIT
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> SizeOfStackCommit: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SIZEOFSTACKCOMMIT put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> SizeOfStackReserve [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SIZEOFSTACKRESERVE
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> SizeOfStackReserve: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SIZEOFSTACKRESERVE put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> SizeOfUninitializedData [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SIZEOFUNINITIALIZEDDATA
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> SizeOfUninitializedData: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SIZEOFUNINITIALIZEDDATA put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> Subsystem [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_SUBSYSTEM
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> Subsystem: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_SUBSYSTEM put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> Win32VersionValue [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_WIN32VERSIONVALUE
]

{ #category : #'accessing structure variables' }
WDOptionalHeader32 >> Win32VersionValue: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_WIN32VERSIONVALUE put: anObject
]
