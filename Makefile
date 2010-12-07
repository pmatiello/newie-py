# tornado-blank-project

# Configuration

PYTHON="python"
EASYINSTALL="easy_install"
NOSETESTS="nosetests"

# Targets

PYTHONPATH="`pwd`/src"

console:
	export PYTHONPATH=${PYTHONPATH} && cd src && ${PYTHON}

test:
	${NOSETESTS} -i should -i spec --verbose --nocapture

deps:
	${EASYINSTALL} nose

clean:
	find . -name *.pyc -exec rm {} \;

.PHONY: test clean