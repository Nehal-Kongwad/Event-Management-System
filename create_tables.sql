CREATE TABLE Organizers (
    organizer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    phone_no VARCHAR(15),
    organization VARCHAR(100)
);

CREATE TABLE Participants (
    participant_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    phone_no VARCHAR(15),
    age INT
);

CREATE TABLE Venues (
    venue_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    address TEXT,
    capacity INT
);

CREATE TABLE Events (
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    category VARCHAR(50),
    start_date DATE,
    end_date DATE,
    venue_id INT,
    organizer_id INT,
    FOREIGN KEY (venue_id) REFERENCES Venues(venue_id),
    FOREIGN KEY (organizer_id) REFERENCES Organizers(organizer_id)
);

CREATE TABLE Sessions (
    session_id INT PRIMARY KEY AUTO_INCREMENT,
    event_id INT,
    title VARCHAR(100),
    speaker VARCHAR(100),
    start_time TIME,
    end_time TIME,
    session_date DATE,
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

CREATE TABLE Sponsors (
    sponsor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    type VARCHAR(50),
    contact_email VARCHAR(100)
);

CREATE TABLE EventSponsors (
    event_id INT,
    sponsor_id INT,
    amount DECIMAL(10,2),
    PRIMARY KEY (event_id, sponsor_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id),
    FOREIGN KEY (sponsor_id) REFERENCES Sponsors(sponsor_id)
);

CREATE TABLE Tickets (
    ticket_id INT PRIMARY KEY AUTO_INCREMENT,
    event_id INT,
    participant_id INT,
    ticket_type VARCHAR(50),
    price DECIMAL(10,2),
    issue_date DATE,
    FOREIGN KEY (event_id) REFERENCES Events(event_id),
    FOREIGN KEY (participant_id) REFERENCES Participants(participant_id)
);

CREATE TABLE Feedbacks (
    feedback_id INT PRIMARY KEY AUTO_INCREMENT,
    participant_id INT,
    event_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comments TEXT,
    feedback_date DATE,
    FOREIGN KEY (participant_id) REFERENCES Participants(participant_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

CREATE TABLE Staff (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    role VARCHAR(50),
    contact_no VARCHAR(15),
    event_id INT,
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);