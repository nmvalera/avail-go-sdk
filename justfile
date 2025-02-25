run:
    go run .
build:
    go build -o /dev/null
check:
    just build
fmt:
    go fmt .
test:
    ./run_tests.sh
book-build:
    cd ./documentation && mdbook build
book-serve:
    cd ./documentation && mdbook serve
book-deploy:
    just book-build
    rm -rf ./docs
    mv ./documentation/book/html ./docs
