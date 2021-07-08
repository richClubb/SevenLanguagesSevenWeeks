#!/usr/local/bin/io

"Hi io\n" print

Converter := Object clone

Converter convert := method(
    convertTo := call argAt(1) asString

    if (convertTo == "number", 
        "Converting to numeral" println
        value := call argAt(0) asString)

    if (convertTo == "numeral", 
        "Converting to numeral" println
        value := call argAt(0) asNumber)
    )

converter := Converter clone

converter convert(VII, number)
converter convert(8, numeral)
