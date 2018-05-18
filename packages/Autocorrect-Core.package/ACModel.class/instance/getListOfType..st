as yet unclassified
getListOfType: aType
	(aType = #SimpleList)
		ifTrue: [^ self simpleList].
	(aType = #OTableClasses)
		ifTrue: [^ OCompletionTable classes].
	(aType = #OTableDefault)
		ifTrue: [^ OCompletionTable default].
	(aType = #ACSlowList )
		ifTrue: [^ ACSlowList new].
		
	^ self error: 'There is no reference to a List of Type: #', aType