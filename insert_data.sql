--  INSERT SAMPLE DATA 

-- Organizers
INSERT INTO Organizers (name, email, phone_no, organization) VALUES
('Ravi Mehta', 'ravi.mehta@example.com', '9876543210', 'Tech India'),
('Priya Sharma', 'priya.sharma@example.com', '9876543211', 'Eventify'),
('Aman Joshi', 'aman.joshi@example.com', '9876543212', 'VisionOrg'),
('Sneha Kulkarni', 'sneha.kulkarni@example.com', '9876543213', 'EventBase'),
('Arjun Reddy', 'arjun.reddy@example.com', '9876543214', 'Global Events'),
('Neha Verma', 'neha.verma@example.com', '9876543215', 'CoreGroup'),
('Karan Patel', 'karan.patel@example.com', '9876543216', 'InnoFest'),
('Tanvi Rao', 'tanvi.rao@example.com', '9876543217', 'OrganizeMe'),
('Ritesh Deshmukh', 'ritesh.d@example.com', '9876543218', 'FuturX'),
('Divya Nair', 'divya.nair@example.com', '9876543219', 'Xenith'),
('Manish Jain', 'manish.jain@example.com', '9876543220', 'Alpha Events'),
('Isha Thakur', 'isha.thakur@example.com', '9876543221', 'NovaOrg'),
('Sahil Gupta', 'sahil.gupta@example.com', '9876543222', 'MegaMeet'),
('Preeti Yadav', 'preeti.yadav@example.com', '9876543223', 'DreamVision'),
('Raj Malhotra', 'raj.malhotra@example.com', '9876543224', 'EventSphere');

-- Participants
INSERT INTO Participants (name, email, phone_no, age) VALUES
('Aarti Desai', 'aarti.d@example.com', '9123456780', 22),
('Varun Iyer', 'varun.iyer@example.com', '9123456781', 25),
('Kavya Bansal', 'kavya.b@example.com', '9123456782', 20),
('Rohan Kapoor', 'rohan.k@example.com', '9123456783', 23),
('Megha Sinha', 'megha.s@example.com', '9123456784', 24),
('Tushar Aggarwal', 'tushar.a@example.com', '9123456785', 21),
('Simran Kaur', 'simran.k@example.com', '9123456786', 22),
('Vikram Rathi', 'vikram.r@example.com', '9123456787', 27),
('Nikita Bhatt', 'nikita.b@example.com', '9123456788', 23),
('Abhishek Taneja', 'abhishek.t@example.com', '9123456789', 26),
('Shruti Mishra', 'shruti.m@example.com', '9123456790', 22),
('Harshil Shah', 'harshil.s@example.com', '9123456791', 25),
('Pooja Nanda', 'pooja.n@example.com', '9123456792', 24),
('Rajeev Saxena', 'rajeev.s@example.com', '9123456793', 28),
('Ishita Rao', 'ishita.r@example.com', '9123456794', 22);

-- Venues
INSERT INTO Venues (name, address, capacity) VALUES
('Mumbai Convention Center', 'Bandra Kurla Complex, Mumbai', 1500),
('Delhi Expo Hall', 'Pragati Maidan, Delhi', 2000),
('Bangalore Innovation Hub', 'Whitefield, Bangalore', 1000),
('Hyderabad Tech Arena', 'Hitech City, Hyderabad', 1800),
('Chennai Trade Center', 'Nandambakkam, Chennai', 1600),
('Pune Knowledge Park', 'Hinjewadi, Pune', 1200),
('Ahmedabad Event Dome', 'Satellite, Ahmedabad', 1100),
('Kolkata Convention Plaza', 'Salt Lake, Kolkata', 1300),
('Jaipur Summit Hall', 'C-Scheme, Jaipur', 900),
('Lucknow City Center', 'Gomti Nagar, Lucknow', 950),
('Bhopal Conference Hall', 'MP Nagar, Bhopal', 850),
('Nagpur Mega Dome', 'Dharampeth, Nagpur', 1000),
('Indore Tech Hall', 'Vijay Nagar, Indore', 950),
('Coimbatore Fair Ground', 'Gandhipuram, Coimbatore', 800),
('Surat Expo Plaza', 'Adajan, Surat', 1050);

-- Events
INSERT INTO Events (name, category, start_date, end_date, venue_id, organizer_id) VALUES
('Tech Fest 2023', 'Technology', '2023-10-01', '2023-10-03', 1, 1),
('Art Expo', 'Art & Culture', '2023-11-15', '2023-11-18', 2, 2),
('Startup Summit', 'Business', '2023-09-10', '2023-09-12', 3, 3),
('Music Mania', 'Music', '2023-12-01', '2023-12-05', 4, 4),
('Health Conference 2023', 'Healthcare', '2023-08-20', '2023-08-22', 5, 5),
('Food Fest', 'Food & Drinks', '2023-11-05', '2023-11-07', 6, 6),
('Innovation Expo', 'Innovation', '2023-09-25', '2023-09-27', 7, 7),
('EduCon', 'Education', '2023-10-20', '2023-10-22', 8, 8),
('Sports Carnival', 'Sports', '2023-12-10', '2023-12-12', 9, 9),
('Fashion Week', 'Fashion', '2023-11-25', '2023-11-28', 10, 10);

-- Sessions
INSERT INTO Sessions (event_id, title, speaker, start_time, end_time, session_date) VALUES
(1, 'AI for the Future', 'Dr. Amit Mehra', '10:00:00', '12:00:00', '2023-10-01'),
(2, 'Masterpieces of the World', 'Suman Rani', '11:00:00', '13:00:00', '2023-11-16'),
(3, 'Building Your Startup', 'Rajesh Yadav', '09:30:00', '11:30:00', '2023-09-10'),
(4, 'Live Performance - Indie Bands', 'DJ Aaryan', '16:00:00', '18:00:00', '2023-12-01'),
(5, 'Future of Medicine', 'Dr. Priya Verma', '14:00:00', '16:00:00', '2023-08-21'),
(6, 'Food and Health', 'Chef Vijay Rao', '10:30:00', '12:30:00', '2023-11-06'),
(7, 'Tech Innovations 2023', 'Vishal Soni', '13:00:00', '15:00:00', '2023-09-26'),
(8, 'Revolutionizing Education', 'Neha Deshmukh', '12:00:00', '14:00:00', '2023-10-21'),
(9, 'Fitness and Health', 'Sunny Rajput', '15:00:00', '17:00:00', '2023-12-11'),
(10, 'Future of Fashion', 'Maya Gupta', '11:00:00', '13:00:00', '2023-11-26');

-- Sponsors
INSERT INTO Sponsors (name, type, contact_email) VALUES
('Tech Innovations Inc.', 'Technology', 'contact@techinnovations.com'),
('ArtWorld Ltd.', 'Art & Culture', 'info@artworld.com'),
('Startup Angels', 'Business', 'support@startupangels.com'),
('Beat Makers', 'Music', 'info@beatmakers.com'),
('HealthCare Solutions', 'Healthcare', 'contact@healthcare.com'),
('TasteBuds', 'Food & Drinks', 'tastebuds@food.com'),
('InnovateX', 'Innovation', 'info@innovatex.com'),
('EduMasters', 'Education', 'edu@edumasters.com'),
('Fit & Health', 'Sports', 'support@fitandhealth.com'),
('Trendy Fashion', 'Fashion', 'contact@trendfashion.com');

-- EventSponsors
INSERT INTO EventSponsors (event_id, sponsor_id, amount) VALUES
(1, 1, 50000.00),
(2, 2, 30000.00),
(3, 3, 40000.00),
(4, 4, 25000.00),
(5, 5, 35000.00),
(6, 6, 20000.00),
(7, 7, 45000.00),
(8, 8, 25000.00),
(9, 9, 30000.00),
(10, 10, 20000.00);

-- Tickets
INSERT INTO Tickets (event_id, participant_id, ticket_type, price, issue_date) VALUES
(1, 1, 'VIP', 3000.00, '2023-09-25'),
(2, 2, 'Regular', 1000.00, '2023-11-05'),
(3, 3, 'VIP', 2500.00, '2023-09-09'),
(4, 4, 'Regular', 1200.00, '2023-11-30'),
(5, 5, 'VIP', 3500.00, '2023-08-19'),
(6, 6, 'Regular', 800.00, '2023-11-04'),
(7, 7, 'VIP', 4000.00, '2023-09-24'),
(8, 8, 'Regular', 1500.00, '2023-10-19'),
(9, 9, 'VIP', 5000.00, '2023-12-09'),
(10, 10, 'Regular', 1000.00, '2023-11-24');

-- Feedbacks
INSERT INTO Feedbacks (participant_id, event_id, rating, comments, feedback_date) VALUES
(1, 1, 5, 'Amazing event, had a great time!', '2023-10-03'),
(2, 2, 4, 'Wonderful experience, would love to attend again.', '2023-11-18'),
(3, 3, 5, 'Incredible insights on startups, very useful.', '2023-09-12'),
(4, 4, 4, 'Great performances, but a bit more variety would be nice.', '2023-12-05'),
(5, 5, 5, 'Excellent speakers and topics on healthcare.', '2023-08-22'),
(6, 6, 4, 'Food was great, but the venue could have been better.', '2023-11-07'),
(7, 7, 5, 'Really enjoyed the latest tech innovations.', '2023-09-27'),
(8, 8, 5, 'Inspiring discussions on education reform.', '2023-10-22'),
(9, 9, 5, 'Great event for fitness enthusiasts, informative sessions.', '2023-12-12'),
(10, 10, 4, 'Fashion showcase was amazing, but too short.', '2023-11-28');

-- Staff
INSERT INTO Staff (name, role, contact_no, event_id) VALUES
('Amit Sharma', 'Event Manager', '9123456780', 1),
('Neha Patel', 'Session Moderator', '9123456781', 2),
('Ravi Kumar', 'Event Coordinator', '9123456782', 3),
('Simran Kaur', 'Technical Support', '9123456783', 4),
('Praveen Soni', 'Security Head', '9123456784', 5),
('Shweta Agarwal', 'Volunteer Manager', '9123456785', 6),
('Rakesh Singh', 'Logistics Manager', '9123456786', 7),
('Pooja Mehta', 'Event Assistant', '9123456787', 8),
('Karan Sharma', 'Audience Relations', '9123456788', 9),
('Alok Joshi', 'Catering Manager', '9123456789', 10);