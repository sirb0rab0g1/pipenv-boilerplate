create:
	pipenv --python 3.7
	touch sample.py
	make fix

fix: # this command after installing certain 3rd party
	pip install pipenv
	pipenv run pip install pip==18.0
	pipenv install

run:
	pipenv run python sample.py
