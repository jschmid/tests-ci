all: sort-project identifiers

sort-project:
	bundle exec synx TestsCI.xcodeproj

identifiers:
	@mkdir -p ./DerivedSources/
	swiftgen images TestsCI/Assets.xcassets --output DerivedSources/ImageCatalog.swift

carthage-bootstrap: 
	carthage bootstrap --no-use-binaries --platform ios

carthage-update: 
	carthage update --no-use-binaries --platform ios
