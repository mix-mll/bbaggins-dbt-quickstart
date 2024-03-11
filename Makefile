install:
	python -m pip install --upgrade pip
	pip install -r requirements.txt
	pre-commit install

lint:
	pre-commit run --all

run:
	dbt run

src:
	dbt source freshness

test_source:
	dbt test -s "source:*"
# 	dbt test -s source:jaffle_shop
