##===- test/Programs/Makefile.TEST.typesafe ----------------*- Makefile -*-===##
#
# This test simply checks to see if programs are typesafe according to the
# -unsafepointertypes analysis.
#
##===----------------------------------------------------------------------===##

test.$(TEST).%: Output/%.llvm.bc
	$(LANALYZE) -unsafepointertypes $<
