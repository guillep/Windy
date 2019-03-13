"
I represent the optional header of a library in 64 bits

https://docs.microsoft.com/en-us/windows/desktop/api/winnt/ns-winnt-_image_optional_header

typedef struct _IMAGE_OPTIONAL_HEADER64 {
 WORD        Magic;
 BYTE        MajorLinkerVersion;
 BYTE        MinorLinkerVersion;
 DWORD       SizeOfCode;
 DWORD       SizeOfInitializedData;
 DWORD       SizeOfUninitializedData;
 DWORD       AddressOfEntryPoint;
 DWORD       BaseOfCode;
 ULONGLONG   ImageBase;
 DWORD       SectionAlignment;
 DWORD       FileAlignment;
 WORD        MajorOperatingSystemVersion;
 WORD        MinorOperatingSystemVersion;
 WORD        MajorImageVersion;
 WORD        MinorImageVersion;
 WORD        MajorSubsystemVersion;
 WORD        MinorSubsystemVersion;
 DWORD       Win32VersionValue;
 DWORD       SizeOfImage;
 DWORD       SizeOfHeaders;
 DWORD       CheckSum;
 WORD        Subsystem;
 WORD        DllCharacteristics;
 ULONGLONG   SizeOfStackReserve;
 ULONGLONG   SizeOfStackCommit;
 ULONGLONG   SizeOfHeapReserve;
 ULONGLONG   SizeOfHeapCommit;
 DWORD       LoaderFlags;
 DWORD       NumberOfRvaAndSizes;
 IMAGE_DATA_DIRECTORY DataDirectory[IMAGE_NUMBEROF_DIRECTORY_ENTRIES];
} IMAGE_OPTIONAL_HEADER64, *PIMAGE_OPTIONAL_HEADER64;
"
Class {
	#name : #WDOptionalHeader64,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_ADDRESSOFENTRYPOINT',
		'OFFSET_BASEOFCODE',
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
	#category : #'Windy-Structures'
}

{ #category : #'field definition' }
WDOptionalHeader64 class >> fieldsDesc [

	^	#(
	WORD								Magic;
	BYTE								MajorLinkerVersion;
	BYTE								MinorLinkerVersion;
	DWORD							SizeOfCode;
	DWORD							SizeOfInitializedData;
	DWORD							SizeOfUninitializedData;
	DWORD							AddressOfEntryPoint;
	DWORD							BaseOfCode;
	ULONGLONG			ImageBase;
	DWORD							SectionAlignment;
	DWORD							FileAlignment;
	WORD								MajorOperatingSystemVersion;
	WORD								MinorOperatingSystemVersion;
	WORD								MajorImageVersion;
	WORD								MinorImageVersion;
	WORD								MajorSubsystemVersion;
	WORD								MinorSubsystemVersion;
	DWORD							Win32VersionValue;
	DWORD							SizeOfImage;
	DWORD							SizeOfHeaders;
	DWORD							CheckSum;
	WORD								Subsystem;
	WORD								DllCharacteristics;
	ULONGLONG			SizeOfStackReserve;
	ULONGLONG			SizeOfStackCommit;
	ULONGLONG			SizeOfHeapReserve;
	ULONGLONG			SizeOfHeapCommit;
	DWORD							LoaderFlags;
	DWORD							NumberOfRvaAndSizes;
	"IMAGE_DATA_DIRECTORY"void*			DataDirectory;)
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> AddressOfEntryPoint [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_ADDRESSOFENTRYPOINT
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> AddressOfEntryPoint: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_ADDRESSOFENTRYPOINT put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> BaseOfCode [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_BASEOFCODE
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> BaseOfCode: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_BASEOFCODE put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> CheckSum [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CHECKSUM
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> CheckSum: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CHECKSUM put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> DataDirectory [
	
	| dataDirectoryHandle |
	dataDirectoryHandle := handle asExternalAddress + (OFFSET_DATADIRECTORY - 1).
	^ FFIExternalArray fromHandle: dataDirectoryHandle type: WDImageDataDirectory name size: self NumberOfRvaAndSizes.
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> DllCharacteristics [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_DLLCHARACTERISTICS
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> DllCharacteristics: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_DLLCHARACTERISTICS put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> FileAlignment [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_FILEALIGNMENT
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> FileAlignment: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_FILEALIGNMENT put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> ImageBase [
	"This method was automatically generated"
	^handle unsignedLongLongAt: OFFSET_IMAGEBASE
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> ImageBase: anObject [
	"This method was automatically generated"
	handle unsignedLongLongAt: OFFSET_IMAGEBASE put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> LoaderFlags [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_LOADERFLAGS
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> LoaderFlags: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_LOADERFLAGS put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> Magic [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_MAGIC
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> Magic: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_MAGIC put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> MajorImageVersion [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_MAJORIMAGEVERSION
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> MajorImageVersion: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_MAJORIMAGEVERSION put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> MajorLinkerVersion [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_MAJORLINKERVERSION
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> MajorLinkerVersion: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_MAJORLINKERVERSION put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> MajorOperatingSystemVersion [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_MAJOROPERATINGSYSTEMVERSION
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> MajorOperatingSystemVersion: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_MAJOROPERATINGSYSTEMVERSION put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> MajorSubsystemVersion [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_MAJORSUBSYSTEMVERSION
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> MajorSubsystemVersion: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_MAJORSUBSYSTEMVERSION put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> MinorImageVersion [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_MINORIMAGEVERSION
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> MinorImageVersion: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_MINORIMAGEVERSION put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> MinorLinkerVersion [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_MINORLINKERVERSION
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> MinorLinkerVersion: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_MINORLINKERVERSION put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> MinorOperatingSystemVersion [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_MINOROPERATINGSYSTEMVERSION
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> MinorOperatingSystemVersion: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_MINOROPERATINGSYSTEMVERSION put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> MinorSubsystemVersion [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_MINORSUBSYSTEMVERSION
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> MinorSubsystemVersion: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_MINORSUBSYSTEMVERSION put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> NumberOfRvaAndSizes [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_NUMBEROFRVAANDSIZES
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> NumberOfRvaAndSizes: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_NUMBEROFRVAANDSIZES put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> SectionAlignment [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SECTIONALIGNMENT
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> SectionAlignment: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SECTIONALIGNMENT put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> SizeOfCode [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SIZEOFCODE
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> SizeOfCode: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SIZEOFCODE put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> SizeOfHeaders [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SIZEOFHEADERS
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> SizeOfHeaders: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SIZEOFHEADERS put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> SizeOfHeapCommit [
	"This method was automatically generated"
	^handle unsignedLongLongAt: OFFSET_SIZEOFHEAPCOMMIT
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> SizeOfHeapCommit: anObject [
	"This method was automatically generated"
	handle unsignedLongLongAt: OFFSET_SIZEOFHEAPCOMMIT put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> SizeOfHeapReserve [
	"This method was automatically generated"
	^handle unsignedLongLongAt: OFFSET_SIZEOFHEAPRESERVE
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> SizeOfHeapReserve: anObject [
	"This method was automatically generated"
	handle unsignedLongLongAt: OFFSET_SIZEOFHEAPRESERVE put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> SizeOfImage [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SIZEOFIMAGE
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> SizeOfImage: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SIZEOFIMAGE put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> SizeOfInitializedData [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SIZEOFINITIALIZEDDATA
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> SizeOfInitializedData: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SIZEOFINITIALIZEDDATA put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> SizeOfStackCommit [
	"This method was automatically generated"
	^handle unsignedLongLongAt: OFFSET_SIZEOFSTACKCOMMIT
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> SizeOfStackCommit: anObject [
	"This method was automatically generated"
	handle unsignedLongLongAt: OFFSET_SIZEOFSTACKCOMMIT put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> SizeOfStackReserve [
	"This method was automatically generated"
	^handle unsignedLongLongAt: OFFSET_SIZEOFSTACKRESERVE
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> SizeOfStackReserve: anObject [
	"This method was automatically generated"
	handle unsignedLongLongAt: OFFSET_SIZEOFSTACKRESERVE put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> SizeOfUninitializedData [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SIZEOFUNINITIALIZEDDATA
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> SizeOfUninitializedData: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SIZEOFUNINITIALIZEDDATA put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> Subsystem [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_SUBSYSTEM
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> Subsystem: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_SUBSYSTEM put: anObject
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> Win32VersionValue [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_WIN32VERSIONVALUE
]

{ #category : #'accessing structure variables' }
WDOptionalHeader64 >> Win32VersionValue: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_WIN32VERSIONVALUE put: anObject
]
