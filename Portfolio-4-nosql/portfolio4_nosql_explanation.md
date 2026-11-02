\# PORTFOLIO 4: NoSQL AND ADVANCED DATA MODELS



\## Case Study: Sunrise Hotel Management System



\### 1. Introduction



This portfolio demonstrates the application of NoSQL database technology to the Sunrise Hotel Management System. MongoDB was selected as the NoSQL database for this practical implementation.



The database, named `Sunrise\_Hotel`, contains collections for guests, bookings, payments and rooms. These collections store hotel information in flexible, JSON-like document structures.



The practical exercises demonstrate how MongoDB can store, retrieve, update and analyse hotel data. They also demonstrate the use of embedded documents and aggregation operations to support hotel management activities.



\### 2. MongoDB Database Implementation



MongoDB was implemented locally using MongoDB Community Server and MongoDB Compass. The database was named `Sunrise\_Hotel`.



Four collections were used in the practical implementation:



\- \*\*guests:\*\* Stores guest identification, names, email addresses, phone numbers, nationality and registration dates.

\- \*\*bookings:\*\* Stores booking identification, guest references, room numbers, room types, check-in and check-out dates, booking status and total amounts.

\- \*\*payments:\*\* Stores payment identification, booking references, guest references, payment dates, payment methods, amounts paid and payment status.

\- \*\*rooms:\*\* Stores room identification, room numbers, room types, floors, prices per night, capacity, room status and amenities.



MongoDB stores these records as documents rather than requiring every record to follow a rigid relational table structure.



\#### 2.1 Embedded Document



An embedded document was implemented in the guests collection for guest ID 101.



The `contact\_details` field contains:

\- City: Lagos

\- Country: Nigeria

\- Preferred contact: Email



This demonstrates how MongoDB allows related information to be stored inside a single document. It makes retrieving a guest's contact information convenient without requiring a separate collection for these details.



\### 3. MongoDB Queries and Aggregation Operations



Several MongoDB queries were executed to retrieve specific information from the Sunrise Hotel database.



\#### 3.1 Data Retrieval Queries



The following queries were implemented:



1\. Retrieved all guest records from the guests collection.

2\. Retrieved bookings with a booking status of Confirmed.

3\. Retrieved guests whose nationality was Nigerian.

4\. Retrieved rooms containing the Mini Bar amenity.

5\. Retrieved rooms with a price per night greater than ₦40,000.



These queries demonstrate MongoDB's ability to filter and retrieve records based on specified conditions.



\#### 3.2 Update Operation



The `updateOne()` method was used to add embedded contact details to guest ID 101.



The operation returned:

\- Acknowledged: True

\- Matched count: 1

\- Modified count: 1



The updated document was then retrieved using `findOne()` to verify the change.



\#### 3.3 Aggregation Operations



Three aggregation operations were performed:



\*\*A. Total Booking Revenue\*\*



The aggregation calculated total booking revenue and the number of bookings.



Result:

\- Total booking revenue: ₦230,000

\- Number of bookings: 2



\*\*B. Revenue by Room Type\*\*



The aggregation grouped bookings according to room type.



| Room Type | Total Revenue | Number of Bookings |

|---|---:|---:|

| Standard | ₦80,000 | 1 |

| Deluxe | ₦150,000 | 1 |



\*\*C. Payments by Payment Method\*\*



The aggregation grouped payment records according to payment method and calculated the total amount paid and number of payments for each method.



The payment methods in the sample records were Bank Transfer and Card.



These aggregation operations demonstrate how MongoDB can summarise hotel revenue and payment information for management reporting.





\### 4. Comparison of NoSQL Database Models



NoSQL databases support different ways of storing and managing data. Four major models are document, key-value, column-family and graph databases.



\#### 4.1 Document Database – MongoDB



MongoDB stores information in flexible documents containing fields and values. Documents can also contain embedded objects and arrays.



Application to Sunrise Hotel:

MongoDB was used to store guest details, bookings, room information and payments. Embedded contact details were added to a guest document.



Suitability:

This model is suitable for hotel management because guest and booking records can contain different attributes and nested information.



\#### 4.2 Key-Value Database – Redis



Redis stores information as a collection of unique keys and their corresponding values.



Application to Sunrise Hotel:

Redis could be used to store temporary booking sessions, login sessions and frequently accessed room availability information.



Suitability:

It provides very fast data access and is useful for temporary information that needs frequent retrieval.



\#### 4.3 Column-Family Database – Apache Cassandra



Apache Cassandra stores data in rows and flexible columns organised into column families.



Application to Sunrise Hotel:

Cassandra could be used to store large volumes of hotel activity records, guest activity histories and booking transactions across multiple hotel branches.



Suitability:

It is suitable for applications that require high availability, scalability and the ability to distribute data across multiple servers.



\#### 4.4 Graph Database – Neo4j



Neo4j stores information as nodes, relationships and properties. It is designed to represent and analyse connections between data entities.



Application to Sunrise Hotel:

A graph database could represent relationships between guests, bookings, rooms and payments. For example, a guest can make several bookings, each booking can be associated with a room, and each booking can have a payment.



Suitability:

This model is useful when the hotel needs to analyse complex relationships, guest booking patterns and connections between customers and services.



\#### 4.5 Summary of the Models



| NoSQL Model | Example Database | Possible Hotel Application |

|---|---|---|

| Document | MongoDB | Guest and booking records |

| Key-Value | Redis | Booking sessions and temporary data |

| Column-Family | Cassandra | Large-scale hotel activity records |

| Graph | Neo4j | Relationships between guests, bookings and rooms |



MongoDB was the database actually implemented in this portfolio. Redis, Cassandra and Neo4j are discussed as alternative models and were not separately installed or implemented.





\### 5. Advantages and Limitations of MongoDB



\#### 5.1 Advantages



1\. \*\*Flexible schema:\*\* MongoDB allows documents to contain different fields, making it easier to accommodate changing hotel information.

2\. \*\*Embedded documents:\*\* Related information, such as guest contact details, can be stored within a single document.

3\. \*\*Scalability:\*\* MongoDB supports horizontal scaling to manage increasing volumes of data.

4\. \*\*Efficient querying:\*\* Its query operators allow users to retrieve records using specific conditions.

5\. \*\*Aggregation:\*\* The aggregation pipeline supports calculations and summaries, such as booking revenue and payment analysis.



\#### 5.2 Limitations



1\. MongoDB does not enforce relational integrity between separate collections in the same way as PostgreSQL.

2\. Poor document design can result in duplicated information.

3\. Complex relationships may require additional queries or aggregation operations.

4\. Users need to understand document modelling to avoid inefficient data structures.



\### 6. Conclusion



This portfolio demonstrated the practical implementation of MongoDB for the Sunrise Hotel Management System.



Four collections were created to manage guests, bookings, payments and rooms. Practical exercises included document insertion, filtering, comparison operators, array queries, embedded documents and aggregation operations.



The results demonstrated how MongoDB can support flexible data storage and hotel management reporting.



The comparison of document, key-value, column-family and graph database models also provided an understanding of alternative NoSQL technologies and their possible applications in hotel management.



MongoDB is suitable for this case study because of its flexible document structure, embedded data capabilities and aggregation features.

