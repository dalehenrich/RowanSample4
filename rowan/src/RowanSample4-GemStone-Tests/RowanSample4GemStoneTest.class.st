Class {
	#name : 'RowanSample4GemStoneTest',
	#superclass : 'TestCase',
	#category : 'RowanSample4-GemStone-Tests'
}

{ #category : 'tests' }
RowanSample4GemStoneTest >> test1 [

	self assert: RowanSample4IdentityKeyValueDictionary new foo = 'foo'
]


