.build/debug/SwiftJSONBoolBug : Sources/main.swift
	swift build

test: .build/debug/SwiftJSONBoolBug
	.build/debug/SwiftJSONBoolBug

clean:
	rm .build/debug/SwiftJSONBoolBug
