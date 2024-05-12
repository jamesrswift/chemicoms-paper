set shell := ["powershell.exe", "-c"]

root := justfile_directory()

export TYPST_ROOT := root

[private]
default:
	@just --list --unsorted

# generate manual
doc:
	typst compile docs/manual.typ docs/manual.pdf

# run test suite
test *args:
	typst-test run {{ args }}

# update test cases
update *args:
	typst-test update {{ args }}

# generate thumbnail
thumbnail *args:
	typst compile {{args}} --format png template/main.typ "thumbnails/{n}.png"
	oxipng -o 4 --strip all "thumbnails/*.png"

# run ci suite
ci: test doc