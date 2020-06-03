.PHONY: install
install:
	pip install -r requirements.txt

.PHONY: test
test:
	cd wisdompets && python3 manage.py test

.PHONY: lint
lint:
	cd wisdompets && pylint wisdompets adoptions --rcfile=pylint.rc

.PHONY: security
security:
	safety check