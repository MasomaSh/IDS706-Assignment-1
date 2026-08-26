.PHONY: install test run docker-build docker-run docker-test clean

IMAGE_NAME := data-engineering-demo

PYTHON := $(shell \
	if [ -x .venv/bin/python ]; then \
		echo .venv/bin/python; \
	elif command -v python3 >/dev/null 2>&1; then \
		echo python3; \
	else \
		echo python; \
	fi \
)

# Install dependencies
install:
	@if [ ! -x .venv/bin/python ] && command -v python3 >/dev/null 2>&1; then \
		python3 -m venv .venv; \
	fi
	@$(PYTHON) -m pip install --upgrade pip
	@$(PYTHON) -m pip install -r requirements.txt

# Run tests
test:
	@$(PYTHON) -m pytest -q

# Run the application
run:
	@if [ -f src/main.py ]; then \
		$(PYTHON) src/main.py; \
	else \
		echo "Missing src/main.py"; \
		exit 1; \
	fi

# Build Docker image
docker-build:
	docker build -t $(IMAGE_NAME) .

# Run application inside Docker
docker-run:
	docker run -it --rm $(IMAGE_NAME)

# Run tests inside Docker
docker-test: docker-build
	docker run --rm $(IMAGE_NAME) python -m pytest -q

# Clean generated files
clean:
	rm -rf __pycache__ .pytest_cache