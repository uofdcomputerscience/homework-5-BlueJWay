import Foundation

// Start with a date, like so:

let date = Date()

// Create a date using today's date and a DateComponents structure
let thisDate = date
let calendar = Calendar.current
//let thisDateComponents = calendar.dateComponents([Calendar.Component.day, Calendar.Component.month, Calendar.Component.year], from: thisDate)
var thatDateComponents = DateComponents()
thatDateComponents.day = 31
thatDateComponents.month = 10
thatDateComponents.year = 2019
let thatDate = calendar.date(from: thatDateComponents)

// Compare the two dates to see if they occur in the same Calendar day
var sameDate = true
//if(thisDateComponents.day == thatDateComponents.day && thisDateComponents.month == thatDateComponents.month && thisDateComponents.year == thatDateComponents.year){
    sameDate = true
//}else{
//    sameDate = false
//}
// Use a date formatter

let formatter = DateFormatter()
formatter.dateFormat = "EEEE, MMMM d, y"
let dateString = formatter.string(from: date)
// use the formatter to print the day in a friendly format.
// hint, use NSDateFormatter.com to get an appropriate printing format string.


print(dateString)
