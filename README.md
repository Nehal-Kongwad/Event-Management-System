# 🎉 Event Management System

This is a simple **Event Management System** built using SQL for database design and operations. It enables users to manage events, registrations, and event-related data through structured database tables.

🔗 GitHub Repository: [Event-Management-System](https://github.com/Nehal-Kongwad/Event-Management-System)

---

## 🧠 Project Objective

To design a relational database system that efficiently manages the details of events, organizers, participants, venues, and scheduling.

---

## 📐 ER Diagram

![ER Diagram](https://github.com/Nehal-Kongwad/Event-Management-System/raw/main/ER%20diagram.png)

> 📌 If the diagram isn’t visible, make sure `ER diagram.png` is uploaded in your repo or update the path.

---

## 🗂️ Database Structure

### 🔸 Tables Included:
- `Organizers`
- `Participants`
- `Events`
- `Venues`
- `Registrations`
- `Feedback` *(if implemented)*

Each table includes primary keys, foreign key constraints, and normalization principles to ensure relational integrity.

---

## 📊 Sample SQL Features Used

- `CREATE TABLE`
- `INSERT INTO`
- `JOIN` (INNER/LEFT)
- `GROUP BY`, `HAVING`
- `PRIMARY KEY`, `FOREIGN KEY`
- `ON DELETE CASCADE`
- Views, Triggers, Stored Procedures *(if any)*

---

## 🔧 How to Use

1. **Clone the Repository**
    ```bash
    git clone https://github.com/Nehal-Kongwad/Event-Management-System.git
    cd Event-Management-System
    ```

2. **Import SQL File**
    - Open MySQL Workbench or phpMyAdmin.
    - Create a new database, e.g., `event_management`.
    - Import `event_management.sql` (or the relevant SQL files) from the repository.

3. **Run Queries**
    - You can test custom queries like:

    ```sql
    -- Get all upcoming events
    SELECT * FROM Events WHERE EventDate > CURDATE();

    -- List participants for a specific event
    SELECT P.Name, E.EventName 
    FROM Participants P 
    JOIN Registrations R ON P.ParticipantID = R.ParticipantID 
    JOIN Events E ON R.EventID = E.EventID;
    ```

---

## 🏁 Future Improvements

- Web-based frontend (HTML/CSS/JS + PHP/Python)
- Login system for organizers/participants
- Real-time registration dashboard
- Admin panel for event analytics

---

## 🙋‍♀️ Author

- **Nehal Kongwad**
- 📧 nehal.kongwad@example.com
- [LinkedIn Profile](#) *(update with your actual LinkedIn URL)*

---

## 📄 License

This project is licensed under the MIT License.
