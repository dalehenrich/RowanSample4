Class {
	#name : 'RowanSample4',
	#superclass : 'Object',
	#instVars : [
		'instvar3',
		'instvar1',
		'instvar2',
		'instvar4'
	],
	#gs_options : [
		'instancesInvariant'
	],
	#gs_constraints : [
		[
			'instvar1',
			'Integer'
		],
		[
			'instvar2',
			'Array'
		],
		[
			'instvar3',
			'Boolean'
		]
	],
	#category : 'RowanSample4-Core'
}

{ #category : 'accessing' }
RowanSample4 >> foo [ ^'foo'
]
