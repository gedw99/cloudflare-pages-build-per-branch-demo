
all: dep gen build

print:
	@echo ""
	@echo "Hello Make"
	@echo ""

dep:
	npm install
gen:
	cp README.md src/README.md
build: build-del
	npm run build-local
build-del:
	npm run clean
open:
	npm run start



	

