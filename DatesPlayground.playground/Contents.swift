import Foundation

// Start with a date, like so:

let date = Date()

// Create a date using today's date and a DateComponents structure
let thisDate = date
let calendar = Calendar.current

var thatDateComponents = DateComponents()
thatDateComponents.day = 31
thatDateComponents.month = 10
thatDateComponents.year = 2019
let thatDate = calendar.date(from: thatDateComponents)

// Compare the two dates to see if they occur in the same Calendar day
var sameDate = calendar.isDate(thisDate, equalTo: thatDate!, toGranularity: .day)
// Use a date formatter

let formatter = DateFormatter()
formatter.dateFormat = "EEEE, MMMM d, y"
let dateString = formatter.string(from: thisDate)
let otherDateString = formatter.string(from: thatDate!)
// use the formatter to print the day in a friendly format.
// hint, use NSDateFormatter.com to get an appropriate printing format string.


print(dateString)
print(otherDateString)
print(sameDate)
