"
I represent a dll image, following the structure of LOADED_IMAGE.
https://docs.microsoft.com/en-us/windows/desktop/api/dbghelp/ns-dbghelp-_loaded_image

## Basic Usage

### Loading a Library

To load a library we can use either an explicit path or using the system resolution
library := WDLibrary loadFileNamed: 'somelibrary.dll' path: FileSystem workindDirectory fullName.
library := WDLibrary loadFileNamedWithSystemLookup: 'someLibrary.dll'.

Loading a library will fail with a WDLibraryNotFound exception in case the library is not found.
In case you want to provide a specific behaviour on failure, you can use the variants using *ifAbsent:

library := WDLibrary loadFileNamed: 'somelibrary.dll' path: FileSystem workindDirectory fullName ifAbsent: [ ""something"" ].
library := WDLibrary loadFileNamedWithSystemLookup: 'someLibrary.dll' ifAbsent: [ ""something"" ].

### Getting the library dependencies 

A library implements #imports, returing a list of its directly imported dlls.

library imports collect: #name.

## Implementation Details

I am a FFI struct with the following shape: 

typedef struct _LOADED_IMAGE {
  PSTR                  ModuleName;
  HANDLE                hFile;
  PUCHAR                MappedAddress;
#if ...
  PIMAGE_NT_HEADERS64   FileHeader;
#else
  PIMAGE_NT_HEADERS32   FileHeader;
#endif
  PIMAGE_SECTION_HEADER LastRvaSection;
  ULONG                 NumberOfSections;
  PIMAGE_SECTION_HEADER Sections;
  ULONG                 Characteristics;
  BOOLEAN               fSystemImage;
  BOOLEAN               fDOSImage;
  BOOLEAN               fReadOnly;
  UCHAR                 Version;
  LIST_ENTRY            Links;
  ULONG                 SizeOfImage;
} LOADED_IMAGE, *PLOADED_IMAGE;


"
Class {
	#name : #WDLibrary,
	#superclass : #FFIExternalStructure,
	#instVars : [
		'path'
	],
	#classVars : [
		'OFFSET_CHARACTERISTICS',
		'OFFSET_FDOSIMAGE',
		'OFFSET_FILEHEADER',
		'OFFSET_FREADONLY',
		'OFFSET_FSYSTEMIMAGE',
		'OFFSET_HFILE',
		'OFFSET_LASTRVASECTION',
		'OFFSET_LING2',
		'OFFSET_LINK1',
		'OFFSET_MAPPEDADDRESS',
		'OFFSET_MODULENAME',
		'OFFSET_NUMBEROFSECTIONS',
		'OFFSET_SECTIONS',
		'OFFSET_SIZEOFIMAGE',
		'OFFSET_VERSION'
	],
	#pools : [
		'WinTypesHelpers'
	],
	#category : #'Windy-Core'
}

{ #category : #'field definition' }
WDLibrary class >> fieldsDesc [

	^ #(
	String ModuleName
	void*  hFile
	uchar* MappedAddress
	void*  FileHeader
	void*  LastRvaSection
	ulong  NumberOfSections
	WDImageSectionHeader*  Sections
	ulong  Characteristics 
	byte   fSystemImage 
	byte   fDOSImage 
	byte   fReadOnly 
	uchar  Version 
	"LIST_ENTRY                        Links"
	void*	 link1
	void*  ling2
	ulong  SizeOfImage )
]

{ #category : #'instance creation' }
WDLibrary class >> libraryNotFound: dllName in: path [

	WDLibraryNotFound new
		library: dllName;
		path: path;
		signal
]

{ #category : #'instance creation' }
WDLibrary class >> loadFileNamed: dllName path: path [
	
	^ self
		loadFileNamed: dllName
		path: path
		ifAbsent: [ self libraryNotFound: dllName in: path ]
]

{ #category : #'instance creation' }
WDLibrary class >> loadFileNamed: dllName path: path ifAbsent: aBlock [
	
	^ self 
		loadLibraryWith: [ | library |
			library := self loadImage: dllName path: path.
			library path: path ]
		ifAbsent: aBlock
]

{ #category : #'instance creation' }
WDLibrary class >> loadFileNamedWithSystemLookup: dllName [
	
	^ self
		loadFileNamedWithSystemLookup: dllName
		ifAbsent: [ self libraryNotFound: dllName in: nil ]
]

{ #category : #'instance creation' }
WDLibrary class >> loadFileNamedWithSystemLookup: dllName ifAbsent: absentBlock [

	^ self
		loadLibraryWith: [ self loadImage: dllName pathPointer: nil ]
		ifAbsent: absentBlock
]

{ #category : #private }
WDLibrary class >> loadImage: dllName path: path [
	
	^ self ffiCall: #(WDLibrary* ImageLoad(String dllName, String path)) module: 'Imagehlp.dll'
]

{ #category : #private }
WDLibrary class >> loadImage: dllName pathPointer: pointer [
	
	^ self ffiCall: #(WDLibrary* ImageLoad(String dllName, void* pointer)) module: 'Imagehlp.dll'
]

{ #category : #private }
WDLibrary class >> loadLibraryWith: aLoadingBlock ifAbsent: aBlock [
	
	| library |
	library := aLoadingBlock value.
	library isNull ifTrue: [ ^ aBlock value ].	
	^ library
]

{ #category : #'accessing structure variables' }
WDLibrary >> = anotherLibrary [

	^ self getHandle == anotherLibrary getHandle
]

{ #category : #'accessing structure variables' }
WDLibrary >> Characteristics [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_CHARACTERISTICS
]

{ #category : #'accessing structure variables' }
WDLibrary >> Characteristics: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_CHARACTERISTICS put: anObject
]

{ #category : #'accessing structure variables' }
WDLibrary >> FileHeader [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_FILEHEADER) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
WDLibrary >> FileHeader: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_FILEHEADER put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
WDLibrary >> LastRvaSection [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LASTRVASECTION) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
WDLibrary >> LastRvaSection: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LASTRVASECTION put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
WDLibrary >> MappedAddress [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_MAPPEDADDRESS) type: ExternalType byte asPointerType
]

{ #category : #'accessing structure variables' }
WDLibrary >> MappedAddress: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_MAPPEDADDRESS put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
WDLibrary >> ModuleName [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_MODULENAME) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
WDLibrary >> ModuleName: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_MODULENAME put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
WDLibrary >> NumberOfSections [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_NUMBEROFSECTIONS
]

{ #category : #'accessing structure variables' }
WDLibrary >> NumberOfSections: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_NUMBEROFSECTIONS put: anObject
]

{ #category : #'accessing structure variables' }
WDLibrary >> Sections [
	"This method was automatically generated"
	^WDImageSectionHeader fromHandle: (handle pointerAt: OFFSET_SECTIONS)
]

{ #category : #'accessing structure variables' }
WDLibrary >> Sections: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_SECTIONS put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
WDLibrary >> SizeOfImage [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_SIZEOFIMAGE
]

{ #category : #'accessing structure variables' }
WDLibrary >> SizeOfImage: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_SIZEOFIMAGE put: anObject
]

{ #category : #'accessing structure variables' }
WDLibrary >> Version [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_VERSION
]

{ #category : #'accessing structure variables' }
WDLibrary >> Version: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_VERSION put: anObject
]

{ #category : #visiting }
WDLibrary >> accept: aVisitor [
	
	aVisitor acceptLibrary: self
]

{ #category : #dependencies }
WDLibrary >> allDependencies [
	
	| collector |
	collector := WDDependencyCollector new.
	self accept: collector.
	^ collector visitedLibraries
]

{ #category : #accessing }
WDLibrary >> delayedImports [
	
	| importHandle imports import |
	imports := OrderedCollection new.
	importHandle := (self mapAddress: (self fileHeader OptionalHeader DataDirectory at: 14) VirtualAddress) getHandle.
	1halt.
	import := WDImport fromHandle: importHandle.
	[ import isEmpty ] whileFalse: [
		imports add: import.
		importHandle := importHandle + WDImport byteSize.
		import := WDImport fromHandle: importHandle.
	].
	^ imports
]

{ #category : #'accessing structure variables' }
WDLibrary >> fDOSImage [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_FDOSIMAGE
]

{ #category : #'accessing structure variables' }
WDLibrary >> fDOSImage: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_FDOSIMAGE put: anObject
]

{ #category : #'accessing structure variables' }
WDLibrary >> fReadOnly [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_FREADONLY
]

{ #category : #'accessing structure variables' }
WDLibrary >> fReadOnly: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_FREADONLY put: anObject
]

{ #category : #'accessing structure variables' }
WDLibrary >> fSystemImage [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_FSYSTEMIMAGE
]

{ #category : #'accessing structure variables' }
WDLibrary >> fSystemImage: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_FSYSTEMIMAGE put: anObject
]

{ #category : #'accessing structure variables' }
WDLibrary >> fileHeader [
	"This method was automatically generated"
	
	| headerHandle header |
	headerHandle := self FileHeader getHandle.
	header := WDHeader32 fromHandle: headerHandle.
	
	"Get the machine from the non-optional file header"
	header FileHeader Machine = 16r014c "IMAGE_FILE_MACHINE_I386"
		ifTrue: [ ^ header ].
	
	^ WDHeader64 fromHandle: headerHandle
]

{ #category : #'accessing structure variables' }
WDLibrary >> hFile [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_HFILE) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
WDLibrary >> hFile: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_HFILE put: anObject getHandle.
]

{ #category : #accessing }
WDLibrary >> imports [
	
	| importHandle imports import importsVirtualAddress |
	imports := OrderedCollection new.
	importsVirtualAddress := (self fileHeader OptionalHeader DataDirectory at: 2) VirtualAddress.
	importsVirtualAddress = 0 ifTrue: [ ^ imports ].

	importHandle := (self mapAddress: importsVirtualAddress) getHandle.
	
	import := WDImport fromHandle: importHandle.
	import library: self.
	[ import isEmpty ] whileFalse: [ 
		imports add: import.
		importHandle := importHandle + WDImport byteSize.
		import := WDImport fromHandle: importHandle.
		import library: self.
	].
	^ imports
]

{ #category : #'accessing structure variables' }
WDLibrary >> ling2 [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LING2) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
WDLibrary >> ling2: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LING2 put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
WDLibrary >> link1 [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LINK1) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
WDLibrary >> link1: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LINK1 put: anObject getHandle.
]

{ #category : #mapping }
WDLibrary >> mapAddress: anAddress [ 
	
	| idataSection |
	idataSection := self sections detect: [ :section | section containsAddress: anAddress ].
	^ idataSection mapAddress: anAddress inLibrary: self.

]

{ #category : #accessing }
WDLibrary >> name [
	
	^ self ModuleName readString
]

{ #category : #accessing }
WDLibrary >> path [
	^ path
]

{ #category : #accessing }
WDLibrary >> path: aString [

	path := aString
]

{ #category : #accessing }
WDLibrary >> sections [
	
	^ FFIExternalArray
		fromHandle: self Sections getHandle
		type: WDImageSectionHeader
		size: self NumberOfSections
]
