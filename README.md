Latex Samples
=======================

Various LaTeX samples I've put together over the years that I refer to
now and again (or use as a startup template).

The Python-based scons build system is used for building PDF's from the
various files so that I don't have to remember when to bibtex or which verison
of which program I should run or when to run the same program 3 times...

On the scons note, the best use case is probably the metauml example.  MetaUML
uses LaTeX and MetaPost.  AS a result, the SConstruct file includes a custom
MetaPost builder to fit everything together.

See the two-col example for a cited research paper with figures using the
default LaTeX two-column format and BibLatex for citation management.

See the IEEE sample for a version of the two-col example using the IEEE
Computer Society Journal styles. Note that this means using bibtex instead
of BibLaTex as in the two-col example.
