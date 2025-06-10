# 🎉 Event Management System (SQL Project)

A mini-project for managing events, registrations, venues, and feedback using a relational database. This system models the core operations of an event management platform—ideal for learning SQL and database design!

---

## 📌 Project Overview

This Event Management System (EMS) is designed to help you efficiently manage:

- **Organizers** (manage events, contact info)
- **Participants** (register for events, profiles)
- **Events** (details, scheduling, venue, organizer linkage)
- **Venues** (where events are held)
- **Registrations** (who attends what, status tracking)
- **Feedback** (optional: gather event reviews)

**Key SQL concepts demonstrated:**
- Table creation with primary & foreign key constraints
- Normalization (3NF)
- Data population with realistic records
- CRUD operations
- Joins (INNER/LEFT)
- Aggregations, grouping, and filtering
- Basic views and (optionally) triggers or stored procedures

---

## 🖼️ ER Diagram

![ER Diagram](ER%20diagram.png)

*Created using dbdiagram.io or similar tools.*

- **Primary keys** are underlined
- **Foreign keys** define relationships
- Cardinality (1-to-many, many-to-many) is clearly shown

---

## 📂 Directory Structure

```
Event-Management-System/
├── event_management.sql   # DDL + DML: schema and sample data
├── ER diagram.png         # ER diagram image
├── .gitignore             # Ignore local/IDE/database dump files
└── README.md              # Project overview, setup, and instructions
```

- **`event_management.sql`**  
  - Contains all `CREATE TABLE` statements (with `DROP TABLE IF EXISTS` for easy resets)
  - Adds realistic sample data for each table (organizers, participants, events, venues, registrations, feedback)
  - Demonstrates queries for CRUD operations, joins, and aggregates

- **`ER diagram.png`**  
  - Visual snapshot of the schema and relationships

- **`.gitignore`**  
  - Prevents committing IDE/config files, database dumps, and logs

---

## ⚙️ Setup & Usage

1. **Clone this repository**
    ```bash
    git clone https://github.com/Nehal-Kongwad/Event-Management-System.git
    cd Event-Management-System
    ```

2. **Create and select your database**
    - Open MySQL Workbench, phpMyAdmin, or your preferred client
    ```sql
    CREATE DATABASE event_management;
    USE event_management;
    ```

3. **Import the SQL file**
    - Run the script to create tables and insert sample data:
    ```sql
    SOURCE event_management.sql;
    ```

4. **Verify the setup**
    ```sql
    SHOW TABLES;
    SELECT * FROM Events LIMIT 5;
    SELECT * FROM Organizers LIMIT 5;
    ```

5. **Run Sample Queries**
    - Try out the examples below or write your own!

---

## 💡 Sample Queries

```sql
-- Get all upcoming events
SELECT * FROM Events WHERE EventDate > CURDATE();

-- List all participants for a specific event
SELECT P.Name, E.EventName
FROM Participants P
JOIN Registrations R ON P.ParticipantID = R.ParticipantID
JOIN Events E ON R.EventID = E.EventID
WHERE E.EventName = 'Tech Conference';

-- Count registrations per event
SELECT E.EventName, COUNT(R.RegistrationID) AS TotalRegistrations
FROM Events E
LEFT JOIN Registrations R ON E.EventID = R.EventID
GROUP BY E.EventID;

-- List feedback and average rating per event (if Feedback implemented)
SELECT E.EventName, AVG(F.Rating) AS AvgRating
FROM Events E
JOIN Feedback F ON E.EventID = F.EventID
GROUP BY E.EventID;
```

---

## 🏗️ Project Highlights

- **Normalized Schema:** All tables in 3rd Normal Form for data integrity and efficiency.
- **Rich Sample Data:** So you can immediately run and test queries.
- **Core SQL Features:** From CRUD to joins, grouping, and basic analytics.
- **ER Diagram:** Quick visual reference for understanding relationships.

---

## 🚀 Possible Extensions

- **Web-based Frontend**
  - Build basic CRUD pages using Flask (Python), Node.js/Express, or PHP
  - Allow organizers and participants to log in, register for events, and view analytics

- **Triggers & Stored Procedures**
  - Example: Auto-confirm registration when event is not full
  - Batch update event statuses, or send notifications

- **Performance Tuning**
  - Add indexes on frequently queried columns (e.g., `EventID`, `OrganizerID`)
  - Use `EXPLAIN` to analyze and optimize queries

- **Export/Import Utilities**
  - Export participant or registration lists to `.csv` for reporting

---

## 🙋‍♀️ Author

- **Nehal Kongwad**
- 📧 nehal.kongwad@example.com
- [LinkedIn Profile](#) *(update with your actual LinkedIn URL)*

---

## 🤝 Contributing

Contributions are welcome!  
To contribute:

1. Fork the repo
2. Create a branch (`git checkout -b feature/YourFeature`)
3. Commit your changes (`git commit -m 'Add a feature'`)
4. Push the branch (`git push origin feature/YourFeature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License.

---

> 
