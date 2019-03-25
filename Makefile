#
# Rules for compiling and linking the typechecker/evaluator
#
# Type
#   make         to rebuild the executable files
#   make clean   to remove all intermediate and temporary files
#

# Files that need to be generated from other files
DEPEND += SpellBookTokens.hs SpellBookGrammar.hs SpellBookEval.hs

# When "make" is invoked with no arguments, we build an executable
#  after building everything that it depends on
all: $(DEPEND) SpellBookInteractive SpellBook

# Build an executable for SpellBook interpreter
myinterpreter: $(DEPEND) SpellBook.hs
	ghc SpellBook.hs

# Build an executable for interactive mode
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


