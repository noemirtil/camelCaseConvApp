// By noemirtil - May the 8th, 2025
// Working on improving the clarity of my code

let input = "This is a simple camelCase converter app" // The input shall be already filled with a nice example
var inputWords = [String]() // Creates the empty array for the substrings which will represent each word of the input
inputWords += input.components(separatedBy: " ") // Appends the substrings to the array based on the space separations
var output = "" // Creates the empty output String
for compon in inputWords {
	if compon == inputWords[0] { // Applies only to the first word
		output += compon.lowercased() // The first word shall be entirely lowercased
	}
	else { // Applies to each other word
		var otherWords = compon
		otherWords.removeFirst() // Removes the first character of each other word
		let firstChar = compon.uppercased().first! // Create a lonely capitalized first character. The .first method makes it optional, therefore I have to force unwrap it
		let cappedWord: String = "\(firstChar)" + otherWords // The first character joins back the tail of the word
		output += cappedWord // All the words are united in a single camelCased String
	}
}
print(output)
