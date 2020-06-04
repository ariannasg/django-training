.PHONY: install
install:
	pip install -r requirements.txt

.PHONY: test
test:
	cd wisdompets && python3 manage.py test

.PHONY: coverage-report
coverage-report:
	cd wisdompets && coverage run manage.py test && coverage report

.PHONY: coverage-html
coverage-html:
	cd wisdompets && coverage run manage.py test && coverage html

.PHONY: lint
lint:
	cd wisdompets && pylint wisdompets adoptions --rcfile=.pylintrc

.PHONY: security
security:
	safety check