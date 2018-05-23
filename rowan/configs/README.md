# Rowan Configurations

### RwProjectLoadConfiguration files

Project load configuration files provide support for conditional loading of packages. All packages belong to one or more groups. The [Load][4] configuration looks like the following:

```ston
 RwProjectLoadConfiguration{
	#name : 'Rowan',
	#conditionalPackages: {
		[ 'common' ] : {
                        'core': {
				#packageNames : [
					'RowanSample4-Core',
					'RowanSample4-Extensions'
					],
				#configurationNames : [ ]
				},
			'tests' : {
				#packageNames : [
					'RowanSample4-Tests'
					],
				#configurationNames : [ ]
				}
			},
		[ 'gs3.2.[15-]' ] : {
                        'core': {
				#packageNames : [
					'RowanSample4-GemStone'
					],
				#configurationNames : [ ]
					},
			'tests' : {
				#packageNames : [
					'RowanSample4-GemStone-Tests'
					],
				#configurationNames : [ ]
				}
			}
		},
	#conditionalPackageMapSpecs : {
		[ 'gemstone' ] : {
			'default_load' : {
				#defaultSymbolDictName : 'RowanSample4SymbolDict',
				#defaultUseSessionMethodsForExtensions : false,
				#packageNameToPlatformPropertiesMap : {}
			}
		},
	#comment : ''
}
```
The three packages: RowanSample4-Core, RowanSample4-Extensions, RowanSample4-Tests are loaded for all platforms (`common` platform). 
The packages RowanSample4-Core and RowanSample4-Extensions are loaded as part of the `core`group.
The RowanSample4-Tests package is loaded as part of the `tests` group.

The two packages RowanSample4-GemStone and RowanSample4-GemStone-Tests are loaded into GemStone for versions `3.2.15` up to, but not including `3.3`.

### RwProjectCompoundConfiguration files

Compound configuration files are very simple configurations that allows one to specify a list of packages and a list configurations. Configurations may be recursively referenced. Packages may be also be referenced from multiple configurations.

Here's a description of the compound configuration files defined for the RowanSampl4 project:
- [Default][1]
  Loaded by default by Rowan. References the `Test` configuration.
- [Common][2]
  Loads the RowanSample4-Core and RowanSample4-Extensions packages.
- [Test][3]
  Loads the `RowanSample4-Tests` package and references the `Common` configuration.

[1]: ./Default.ston
[2]: ./Common.ston
[3]: ./Test.ston
[4]: ./Load.ston
