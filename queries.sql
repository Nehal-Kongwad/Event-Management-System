-- Queries :- 
-- 1. Retrieve all events
SELECT * FROM Events;

-- 2. Get all participants in a specific event (via Tickets table)
SELECT p.*
FROM Participants p
JOIN Tickets t ON p.participant_id = t.participant_id
WHERE t.event_id = 1;

-- 3. List all venues
SELECT * FROM Venues;

-- 4. Get the total number of tickets sold for an event
SELECT COUNT(ticket_id) AS TotalTickets FROM Tickets WHERE event_id = 1;

-- 5. List all organizers for an event
SELECT * FROM Organizers WHERE event_id = 1;

-- 6. Find all events held at a specific venue
SELECT e.name AS Event, v.name AS Venue
FROM Events e
JOIN Venues v ON e.venue_id = v.venue_id
WHERE v.name = 'Convention Center';

-- 7. Get all sponsors for a specific event
SELECT s.name AS Sponsor
FROM Sponsors s
JOIN EventSponsors es ON s.sponsor_id = es.sponsor_id
JOIN Events e ON es.event_id = e.event_id
WHERE e.name = 'Tech Fest 2023';

-- 8. List all participants and their ticket types for a specific event
SELECT p.name AS Participant, t.ticket_type
FROM Tickets t
JOIN Participants p ON t.participant_id = p.participant_id
JOIN Events e ON t.event_id = e.event_id
WHERE e.name = 'Tech Fest 2023';

-- 9. Find all events with no sponsors
SELECT e.name AS Event
FROM Events e
LEFT JOIN EventSponsors es ON e.event_id = es.event_id
WHERE es.sponsor_id IS NULL;

-- 10. Get the number of events organized by a specific organizer
SELECT COUNT(e.event_id) AS NumberOfEvents
FROM Events e
JOIN Organizers o ON e.organizer_id = o.organizer_id
WHERE o.name = 'Ravi Mehta';

-- 11. List all feedback for an event
SELECT p.name AS Participant, f.rating, f.comments
FROM Feedbacks f
JOIN Participants p ON f.participant_id = p.participant_id
JOIN Events e ON f.event_id = e.event_id
WHERE e.name = 'Tech Fest 2023';

-- 12. Find the event with the highest number of participants
SELECT e.name AS Event, COUNT(t.participant_id) AS NumberOfParticipants
FROM Events e
JOIN Tickets t ON e.event_id = t.event_id
GROUP BY e.event_id
ORDER BY NumberOfParticipants DESC
LIMIT 1;

-- 13. Get the average rating for an event
SELECT e.name AS Event, AVG(f.rating) AS AverageRating
FROM Feedbacks f
JOIN Events e ON f.event_id = e.event_id
GROUP BY e.event_id;

-- 14. Find all events held in 2023
SELECT name, start_date, end_date
FROM Events
WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31';

-- 15. Get the participant count for each event
SELECT e.name AS Event, COUNT(t.participant_id) AS NumberOfParticipants
FROM Events e
JOIN Tickets t ON e.event_id = t.event_id
GROUP BY e.event_id;

-- 16. List all tickets for an event purchased by a specific participant
SELECT t.ticket_id, e.name AS Event, t.ticket_type
FROM Tickets t
JOIN Events e ON t.event_id = e.event_id
WHERE t.participant_id = 1;

-- 17. Find the total sponsorship for an event
SELECT e.name AS Event, SUM(es.amount) AS TotalSponsorship
FROM EventSponsors es
JOIN Events e ON es.event_id = e.event_id
GROUP BY e.event_id;

-- 18. Get all sessions conducted in an event
SELECT s.title AS Session, s.speaker
FROM Sessions s
JOIN Events e ON s.event_id = e.event_id
WHERE e.name = 'Tech Fest 2023';

-- 19. Find participants who attended more than one event
SELECT p.name AS Participant
FROM Tickets t
JOIN Participants p ON t.participant_id = p.participant_id
GROUP BY p.participant_id
HAVING COUNT(DISTINCT t.event_id) > 1;

-- 20. Get all events that were organized by a specific organizer in 2023
SELECT e.name AS Event, e.start_date, e.end_date
FROM Events e
JOIN Organizers o ON e.organizer_id = o.organizer_id
WHERE o.name = 'Priya Sharma' AND e.start_date BETWEEN '2023-01-01' AND '2023-12-31';

-- 21. Get participants who gave a rating of 5 for an event
SELECT p.name AS Participant
FROM Feedbacks f
JOIN Participants p ON f.participant_id = p.participant_id
JOIN Events e ON f.event_id = e.event_id
WHERE f.rating = 5 AND e.name = 'Tech Fest 2023';

-- 22. Get the total number of sessions in an event
SELECT e.name AS Event, COUNT(s.session_id) AS NumberOfSessions
FROM Events e
JOIN Sessions s ON e.event_id = s.event_id
GROUP BY e.event_id;

-- 23. List all events organized in a specific venue
SELECT e.name AS Event, v.name AS Venue
FROM Events e
JOIN Venues v ON e.venue_id = v.venue_id
WHERE v.name = 'Hyderabad Tech Park';

-- 24. Get all sponsors who contributed above a specific amount for an event
SELECT s.name AS Sponsor, SUM(es.amount) AS Contribution
FROM EventSponsors es
JOIN Sponsors s ON es.sponsor_id = s.sponsor_id
JOIN Events e ON es.event_id = e.event_id
WHERE e.name = 'Tech Fest 2023'
GROUP BY s.sponsor_id
HAVING SUM(es.amount) > 10000;

-- 25. Find the average ticket price for each event
SELECT e.name AS Event, AVG(t.price) AS AverageTicketPrice
FROM Events e
JOIN Tickets t ON e.event_id = t.event_id
GROUP BY e.event_id;

-- 26. Find all events organized by a specific organizer
SELECT e.name AS Event, o.name AS Organizer
FROM Events e
JOIN Organizers o ON e.organizer_id = o.organizer_id
WHERE o.name = 'Tech World Inc.';

-- 27. List all events where a participant gave a feedback score of 1 or 2
SELECT e.name AS Event, p.name AS Participant, f.rating
FROM Feedbacks f
JOIN Events e ON f.event_id = e.event_id
JOIN Participants p ON f.participant_id = p.participant_id
WHERE f.rating IN (1, 2);

-- 28. Get all events and their respective venues
SELECT e.name AS Event, v.name AS Venue
FROM Events e
JOIN Venues v ON e.venue_id = v.venue_id;

-- 29. Get the feedback comments for a specific event
SELECT p.name AS Participant, f.comments
FROM Feedbacks f
JOIN Participants p ON f.participant_id = p.participant_id
JOIN Events e ON f.event_id = e.event_id
WHERE e.name = 'Tech Fest 2023';

-- 30. Find the event with the maximum ticket price
SELECT e.name AS Event, MAX(t.price) AS HighestTicketPrice
FROM Events e
JOIN Tickets t ON e.event_id = t.event_id
GROUP BY e.event_id
ORDER BY HighestTicketPrice DESC
LIMIT 1;

-- 31. Get total attendance for each event based on ticket sales
SELECT e.name AS Event, COUNT(t.ticket_id) AS TotalAttendance
FROM Events e
JOIN Tickets t ON e.event_id = t.event_id
GROUP BY e.event_id;


-- 33. Find events that have received the highest feedback score
SELECT e.name AS Event, AVG(f.rating) AS AverageRating
FROM Feedbacks f
JOIN Events e ON f.event_id = e.event_id
GROUP BY e.event_id
ORDER BY AverageRating DESC
LIMIT 1;

-- 34. Get the participants who purchased VIP tickets for events in 2023
SELECT p.name AS Participant, e.name AS Event, t.ticket_type
FROM Tickets t
JOIN Participants p ON t.participant_id = p.participant_id
JOIN Events e ON t.event_id = e.event_id
WHERE t.ticket_type = 'VIP' AND e.start_date BETWEEN '2023-01-01' AND '2023-12-31';

-- 35. Find the most expensive ticket for a specific event
SELECT e.name AS Event, MAX(t.price) AS MostExpensiveTicket
FROM Events e
JOIN Tickets t ON e.event_id = t.event_id
WHERE e.name = 'Tech Fest 2023'
GROUP BY e.event_id;

-- 36. Find events organized by a specific organizer in a specific venue
SELECT e.name AS Event, o.name AS Organizer, v.name AS Venue
FROM Events e
JOIN Organizers o ON e.organizer_id = o.organizer_id
JOIN Venues v ON e.venue_id = v.venue_id
WHERE o.name = 'Ravi Mehta' AND v.name = 'Mumbai Convention Center';

-- 37. Get the total number of sponsors for each event
SELECT e.name AS Event, COUNT(s.sponsor_id) AS TotalSponsors
FROM Events e
JOIN EventSponsors es ON e.event_id = es.event_id
JOIN Sponsors s ON es.sponsor_id = s.sponsor_id
GROUP BY e.event_id;

-- 38. Get events where participants gave an average rating of 4 or higher
SELECT e.name AS Event, AVG(f.rating) AS AverageRating
FROM Feedbacks f
JOIN Events e ON f.event_id = e.event_id
GROUP BY e.event_id
HAVING AVG(f.rating) >= 4;

-- 39. Find events organized by a specific company
SELECT e.name AS Event, o.name AS Organizer
FROM Events e
JOIN Organizers o ON e.organizer_id = o.organizer_id
WHERE o.organization = 'Tech India';

-- 40. List the participants who registered for events in a particular month
SELECT p.name AS Participant, e.name AS Event, t.issue_date
FROM Tickets t
JOIN Participants p ON t.participant_id = p.participant_id
JOIN Events e ON t.event_id = e.event_id
WHERE MONTH(t.issue_date) = 6;

-- 41. Get the event with the most sessions
SELECT e.name AS Event, COUNT(s.session_id) AS NumberOfSessions
FROM Events e
JOIN Sessions s ON e.event_id = s.event_id
GROUP BY e.event_id
ORDER BY NumberOfSessions DESC
LIMIT 1;

-- 42. Find events with no feedback ratings
SELECT e.name AS Event
FROM Events e
LEFT JOIN Feedbacks f ON e.event_id = f.event_id
WHERE f.rating IS NULL;

-- 43. Get the sponsor who contributed the most to an event
SELECT s.name AS Sponsor, SUM(es.amount) AS TotalContribution
FROM EventSponsors es
JOIN Sponsors s ON es.sponsor_id = s.sponsor_id
WHERE es.event_id = 1
GROUP BY s.sponsor_id
ORDER BY TotalContribution DESC
LIMIT 1;

-- 44. Find participants who attended all events organized by a specific organizer
SELECT p.name AS Participant
FROM Tickets t
JOIN Participants p ON t.participant_id = p.participant_id
JOIN Events e ON t.event_id = e.event_id
JOIN Organizers o ON e.organizer_id = o.organizer_id
WHERE o.name = 'Tech India'
GROUP BY p.participant_id
HAVING COUNT(DISTINCT e.event_id) = (SELECT COUNT(*) FROM Events WHERE organizer_id = (SELECT organizer_id FROM Organizers WHERE name = 'Tech India'));

-- 45. Find the most popular venue based on the number of events hosted
SELECT v.name AS Venue, COUNT(e.event_id) AS EventCount
FROM Venues v
JOIN Events e ON v.venue_id = e.venue_id
GROUP BY v.venue_id
ORDER BY EventCount DESC
LIMIT 1;

-- 46. Find the participant who has attended the maximum number of events
SELECT p.name AS Participant, COUNT(t.event_id) AS NumberOfEvents
FROM Tickets t
JOIN Participants p ON t.participant_id = p.participant_id
GROUP BY p.participant_id
ORDER BY NumberOfEvents DESC
LIMIT 1;

-- 47. List all sessions that have taken place for a specific event
SELECT s.title AS Session, s.start_time, s.end_time
FROM Sessions s
JOIN Events e ON s.event_id = e.event_id
WHERE e.name = 'Tech Fest 2023';

-- 48. Find the event with the highest total revenue from ticket sales
SELECT e.name AS Event, SUM(t.price) AS TotalRevenue
FROM Events e
JOIN Tickets t ON e.event_id = t.event_id
GROUP BY e.event_id
ORDER BY TotalRevenue DESC
LIMIT 1;

-- 49. List all participants who attended an event within a specific date range
SELECT p.name AS Participant, e.name AS Event, t.issue_date
FROM Tickets t
JOIN Participants p ON t.participant_id = p.participant_id
JOIN Events e ON t.event_id = e.event_id
WHERE t.issue_date BETWEEN '2023-01-01' AND '2023-06-30';

-- 50. Get the top 3 most expensive tickets for each event
SELECT e.name AS Event, t.ticket_type, MAX(t.price) AS MaxPrice
FROM Events e
JOIN Tickets t ON e.event_id = t.event_id
GROUP BY e.event_id, t.ticket_type
ORDER BY MaxPrice DESC
LIMIT 3;