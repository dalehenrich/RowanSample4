Class {
	#name : 'RowanSample4Test',
	#superclass : 'TestCase',
	#category : 'RowanSample4-Tests'
}

{ #category : 'tests' }
RowanSample4Test >> test1 [

	self assert: RowanSample4 new foo = 'foo'
]

{ #category : 'tests' }
RowanSample4Test >> test2 [

	self assert: RowanSample4 bar = 'bar'
]

{ #category : 'tests' }
RowanSample4Test >> testError [

	self assert: RowanSample4 new bar = 'bar'

]

{ #category : 'tests' }
RowanSample4Test >> testFailure [

	self assert: RowanSample4 new foo = 'bar'

]
