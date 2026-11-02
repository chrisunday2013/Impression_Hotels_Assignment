// PORTFOLIO 4: NOSQL AND ADVANCED DATA MODELS
// Case Study: Sunrise Hotel Management System
// Database: Sunrise_Hotel

// Select the database
use("Sunrise_Hotel");


// 1. DISPLAY ALL GUEST RECORDS
db.guests.find();


// 2. FIND CONFIRMED BOOKINGS
db.bookings.find({
    booking_status: "Confirmed"
});


// 3. FIND GUESTS OF NIGERIAN NATIONALITY
db.guests.find({
    nationality: "Nigerian"
});


// 4. FIND ROOMS WITH MINI BAR AMENITY
db.rooms.find({
    amenities: "Mini Bar"
});


// 5. FIND ROOMS PRICED ABOVE 40,000
db.rooms.find({
    price_per_night: { $gt: 40000 }
});


// 6. EMBED CONTACT DETAILS IN A GUEST DOCUMENT
db.guests.updateOne(
    { guest_id: 101 },
    {
        $set: {
            contact_details: {
                city: "Lagos",
                country: "Nigeria",
                preferred_contact: "Email"
            }
        }
    }
);


// 7. VERIFY THE UPDATED GUEST DOCUMENT
db.guests.findOne({
    guest_id: 101
});


// 8. CALCULATE TOTAL BOOKING REVENUE
db.bookings.aggregate([
    {
        $group: {
            _id: null,
            total_booking_revenue: { $sum: "$total_amount" },
            number_of_bookings: { $sum: 1 }
        }
    }
]);


// 9. CALCULATE REVENUE BY ROOM TYPE
db.bookings.aggregate([
    {
        $group: {
            _id: "$room_type",
            total_revenue: { $sum: "$total_amount" },
            number_of_bookings: { $sum: 1 }
        }
    }
]);
// 10. AGGREGATE PAYMENTS BY PAYMENT METHOD
db.payments.aggregate([
    {
        $group: {
            _id: "$payment_method",
            total_amount: { $sum: "$amount_paid" },
            number_of_payments: { $sum: 1 }
        }
    }
]);