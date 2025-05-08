// By noemirtil - May the 7th, 2025, commit #03
// New changes

let input = "This is a simple camelCase converter app"
var words = [String]() // Creates the empty array for the substrings
words += input.components(separatedBy: " ") // Appends the substrings to the array based on the space separations
var output = "" // Creates the empty output String
for compon in words {
	if compon == words[0] { // Applies to the first word
		output += compon.lowercased() // Entirely lowercased
	}
	else { // Applies to each other word
		var tail = compon
		tail.removeFirst() // Removes its first character
		let firstChar = compon.uppercased().first! // Create a lonely capitalized first character. The .first method makes it optional, therefore I have to force unwrap it
		let word: String = "\(firstChar)" + tail // The first character joins back the tail of the word
		output += word // All the words are united in a single camelCased String
	}
}
print(output)
