# PORTFOLIO 5: DISTRIBUTED AND CLOUD DATABASES



## 1. Introduction



This portfolio demonstrates the deployment of the Sunrise Hotel Management System database on MongoDB Atlas, a cloud-based database service. MongoDB Compass was used as the desktop client to connect remotely to the cloud database, create collections, insert records and verify stored data.



The objective is to demonstrate how a hotel management database can be hosted in a cloud environment and accessed remotely.



## 2. Cloud Database Deployment



A MongoDB Atlas project named **Sunrise-Hotel-Cloud-Database** was created. Within the project, a cloud cluster named **SunriseHotelCluster** was deployed.



The cluster configuration was:



- Cloud provider: Amazon Web Services (AWS)

- Cloud region: Cape Town, South Africa (af-south-1)

- Cluster tier: M0 Free Tier

- Database name: SunriseHotelDB



The cluster was successfully connected to MongoDB Compass using the Atlas connection.



## 3. Database Collections and Implementation



Four collections were created in the cloud database:



| Collection | Purpose |

|---|---|

| guests | Stores hotel guest information |

| bookings | Stores guest reservation details |

| payments | Stores payment transactions |

| rooms | Stores room information, prices and amenities |



Sample documents were inserted into each collection. The records were displayed in MongoDB Compass to verify successful insertion.



The Atlas database overview confirmed that SunriseHotelDB contained four collections.



## 4. Distributed Database Concepts



### 4.1 Cloud Deployment



Cloud deployment allows a database to be hosted on remote infrastructure rather than exclusively on a local computer. The Sunrise Hotel database was deployed on MongoDB Atlas and accessed remotely through MongoDB Compass.



This provides flexibility because authorised users can connect to the database from different locations, subject to network access and database permissions.



### 4.2 Replication



Replication involves maintaining copies of database data across multiple database servers. In MongoDB, this is commonly implemented using replica sets.



Replication improves data availability and supports recovery when a database server becomes unavailable. A replica set can have a primary node that accepts writes and secondary nodes that maintain copies of the data.



For this implementation, the database was deployed on MongoDB Atlas. However, a replica set was not manually configured or independently tested as part of this practical exercise.



### 4.3 Sharding



Sharding is a technique used to distribute large datasets across multiple servers. It allows a database to scale horizontally by distributing data according to a selected shard key.



For example, a large hotel management system could distribute booking records using a suitable shard key such as guest ID or booking ID.



Sharding can improve scalability and distribute storage and query workloads. Sharding was discussed as a distributed database concept but was not configured in this M0 practical implementation.



### 4.4 Availability



Availability refers to the ability of a database system to remain accessible when users need it.



Cloud database services support availability through managed infrastructure, monitoring and service-level recovery mechanisms. Hosting the Sunrise Hotel database on MongoDB Atlas demonstrates cloud-based access rather than relying only on a local database installation.



### 4.5 Consistency



Consistency ensures that database operations maintain valid and reliable data.



For example, a payment record should reference an existing booking, and a booking should identify the correct guest. The Sunrise Hotel database uses related identifiers such as guest\_id and booking\_id to maintain logical relationships between records.



MongoDB provides configurable read and write concerns that influence consistency and acknowledgement behaviour. These settings were not separately configured or tested in this exercise.



## 5. Benefits and Limitations



The cloud implementation demonstrates the following benefits:



- Remote access to the database.

- Centralised storage of hotel management records.

- Easier collaboration between authorised users.

- A foundation for future scalability.

- Reduced dependence on a single local computer.



The practical implementation used the MongoDB Atlas M0 Free Tier. Advanced distributed features such as manually configured sharding and replica-set testing were outside the scope of this exercise.



## 6. Conclusion



The Sunrise Hotel Management System was successfully deployed on MongoDB Atlas. Four collections—guests, bookings, payments and rooms—were created, and sample records were inserted and verified through MongoDB Compass.



The exercise demonstrated practical cloud database deployment and remote access while explaining the roles of replication, sharding, availability and consistency in distributed database systems.



## 7. Evidence



The following screenshots provide evidence of the implementation:



1. `portfolio5_atlas_cluster.png`
2. `portfolio5_compass_connection.png`
3. `portfolio5_cloud_database_guest_record.png`
4. `portfolio5_bookings_collection.png`
5. `portfolio5_payments_collection.png`
6. `portfolio5_rooms_collection.png`



## 8. Reflection



This exercise improved my understanding of cloud database deployment and remote database connectivity. I learned how to create a MongoDB Atlas cluster, establish a connection through MongoDB Compass, create collections and insert records into a cloud-hosted database.



It also helped me understand the differences between cloud deployment, replication and sharding, including why distributed database techniques are important for larger applications.

