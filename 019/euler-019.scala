/*
How many Sundays fell on the first of the month during the twentieth
century (1 Jan 1901 to 31 Dec 2000)?

Imperative solution. Requires org.joda.time and org.joda.joda-convert
*/

import org.joda.time._ // Pre-invented wheel

var sundays = 0
var start = new DateTime("1901-1-1")
val end = new DateTime("2000-12-31")

while (start isBefore end) {
	if (start.getDayOfWeek == DateTimeConstants.SUNDAY) {
		sundays += 1
	}
	start = start.plusMonths(1)
}

println(sundays)
