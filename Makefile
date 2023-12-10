build:
	@echo "Building container... 🪀"
	@echo "Done 🪀"

run:
	@echo "Running container... 🪀"
	@echo "Done 🪀"

install:
	@echo "Installing dependencies..."
	pipenv install Pipfile
	@echo "Done 🪀"

linter:
	@echo "Running black..."
	black --check .

	@echo "Running flake8... 🥎"
	flake8 . --count --exit-zero --max-complexity=10 --max-line-length=127 --statistics --exclude setting
	
	@echo "Running isort... 🥎"
	isort -c . --profile black
	
	@echo "Running bandit... 🥎"
	bandit -r .
	
	@echo "Done 🪀"
