import Foundation

var expectedLines = 0
//Collecting the input

while true {
    print("How many lines do you want me to process?")
    guard let givenNumber = readLine() else {
        continue
    }
    guard let givenInt = Int(givenNumber) else {
        continue
    }
    
    if givenInt > 9_999 || givenInt < 1 {
        continue
    }
    
    expectedLines = givenInt
    
    break
}

// Process
var count = 0
var StringArray : [String] = []
outer: for _ in 1...2 * expectedLines {
    print("Give me some more multiple choice answers")
    inner: while true {
        print("Just keys, please")
        guard let givenLine = readLine() else {
            continue
        
        }
        if givenLine == "A" || givenLine == "B" || givenLine == "C" || givenLine == "D" {
            StringArray.append(givenLine)
            break inner
        } else {
            continue
        }
    }
}

for i in 0...(StringArray.count - 1) / 2 {
    if StringArray[i] == StringArray[i + (StringArray.count) / 2] {
        count += 1
    }
}

// OUTPUT
// Report results to the user here
print("the number of correct answers is \(count) ")

