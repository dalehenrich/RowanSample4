# Rowan Configurations

### RwProjectLoadConfiguration files

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
