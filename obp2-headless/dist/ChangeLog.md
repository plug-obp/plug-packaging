# Version 1.0.0
Large internal refactoring.

New Features:
- The CLI version produces string and binary counter-examples

Removed features :
- The bridge for post-mortem analysis of OBP is no longer supported
- The EMI support for UML is unavailable in this version

# Version 0.0.6

Big refactoring of the user interface.

Model-checking :

- it is possible to define a model in the editor directly (for textual specification languages only)
- added a button to run all *verification tasks*
- CSV export of the verification results

Simulation :

- The fireable transitions based on the transition relation
- Button to change the verticality of the simulation trace
- Improvements on the configuration view (expand tree, show only differences)
- Deadlock finding from any configuration
- Added watch expressions on the configurations
- *go until true/false* for groups of watch expressions

# Version 0.0.5

New features:

- Configuration filtering now uses Propositional logic.
- The error view is automatically hidden when there is no error.

Bug fixes:

- Mixed errors concerning model and properties are cleaned when changing the model.
- Stabilization of remote python runtime.

# Version 0.0.4 on the 16th of April 2018

The first published version. 
See the blog [post](https://plug-obp.github.io/version/2018/04/16/obp2/) for the list of features.
