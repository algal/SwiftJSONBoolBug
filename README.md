## JSON encoding bug in Swift 3 corelibs

This repo demonstrates
[bug SR-3013](https://bugs.swift.org/browse/SR-3013) in
JSONSerialization's encoding of boolean values.

The boolean values false and true are coerced to numbers 0 and 1, on Linux.

This is incorrect, since the JSON specification RFC 7159 indicates
that booleans are numbers are distincti primitive types, and not
interconvertible.

This bug will therefore produce incorrect output that will not be
interpreted by other systems.

Another effect of this bug is that a round trip conversion of a value
to data and back to itself will fail.

