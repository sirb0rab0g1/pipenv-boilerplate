create:
	pipenv --python 3.9
	touch sample.py
	make fix

fix: # this command after installing certain 3rd party
	pip3 install pipenv
	pipenv run pip3 install pip==18.0
	pipenv install

install: #ex. make install name=name_of_package
	@echo "\033[92mInstalling Pakcage $(name)...\033[0m"
	pipenv install --keep-outdated $(name)

run:
	pipenv run python sample.py
