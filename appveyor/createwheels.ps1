foreach ($PACKAGE in get-content ..\\packages.txt) {
    "Building $PACKAGE"
    pip wheel --no-cache-dir --wheel-dir=.\packages\\$PACKAGE $PACKAGE
}
