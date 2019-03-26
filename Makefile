#
# Rules for compiling and linking the typechecker/evaluator
#
# Type
#   make         to rebuild the executable files
#   make clean   to remove all intermediate and temporary files
#

# Files that need to be generated from other files
DEPEND += SpellBookTokens.hs SpellBookGrammar.hs SpellBookEval.hs

# Build an executable for SpellBook interpreter
SpellBook: $(DEPEND) SpellBook.hs
	ghc SpellBook.hs
	cp SpellBook myinterpreter
	rm SpellBook

SpellBookInteractive: $(DEPEND) SpellBookInteractive.hs
	ghc SpellBookInteractive.hs

# Generate ML files from a parser definition file
SpellBookGrammar.hs : SpellBookGrammar.y
	@rm -f SpellBookGrammar.hs
	happy SpellBookGrammar.y
	@chmod -w SpellBookGrammar.hs

# Generate ML files from a lexer definition file
SpellBookTokens.hs : SpellBookTokens.x
	@rm -f SpellBookTokens.hs
	alex SpellBookTokens.x
	@chmod -w SpellBookTokens.hs

# Clean up the directory
clean::
	rm -rf SpellBookTokens.hs SpellBookGrammar.hs *.hi *.o *.info
	rm -f myinterpreter.*
	rm myinterpreter