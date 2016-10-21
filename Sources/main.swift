
import Foundation

let boolDict:[String:Any] = ["key":true]
var boolDictData:Data
do {
    print("\n\nSerializing this [String:Bool] to JSON: \(boolDict)")
    boolDictData = try JSONSerialization.data(withJSONObject:boolDict,options:[])
    guard let s = String(data: boolDictData, encoding: .utf8) else {
        print("unable to decode utf8"); exit(1)
    }
    print("Serialized to JSON: \(s)")
}
catch let e as NSError {
    print("NSError serializing to JSON data, where error.description = \(e.description)")
    exit(1)
}
catch let e {
    print("Error serializing to JSON data, where error = \(e)")
    exit(1)
}

print("Does a roundtrip from value -> JSON Data -> value preserve type?")

do {
    let decodedBoolArray = try JSONSerialization.jsonObject(with: boolDictData,options:[])

    if let _ = decodedBoolArray as? [Bool] {
        print("Yes. Decoded value was still a [String:Bool]")
    }
    else {
        print("No. Error: decoded value was not a [String:Bool]")
    }
}
catch let e {
    print("error deserializing from JSON data, where error = \(e)")
}

let boolArray:[Any] = [true]
var boolArrayData:Data
do {
    print("\n\nSerializing this [Bool] to JSON: \(boolArray)")
    boolArrayData = try JSONSerialization.data(withJSONObject:boolArray,options:[])
    guard let s = String(data: boolArrayData, encoding: .utf8) else {
        print("unable to decode utf8"); exit(1)
    }
    print("Serialized to JSON: \(s)")
}
catch let e as NSError {
    print("NSError serializing to JSON data, where error.description = \(e.description)")
    exit(1)
}
catch let e {
    print("Error serializing to JSON data, where error = \(e)")
    exit(1)
}

print("Does a roundtrip from value -> JSON Data -> value preserve type?")

do {
    let decodedBoolArray = try JSONSerialization.jsonObject(with: boolArrayData,options:[])

    if let _ = decodedBoolArray as? [Bool] {
        print("Yes. Decoded value was still a [Bool]")
    }
    else {
        print("No. Error: decoded value was not a [Bool]")
    }
}
catch let e {
    print("error deserializing from JSON data, where error = \(e)")
}


print("")
