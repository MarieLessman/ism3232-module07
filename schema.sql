-- Calm Harbor Spa 
-- Safe to run more than once: CREATE TABLE IF NOT EXISTS and INSERT OR IGNORE

CREATE TABLE IF NOT EXISTS services (
    name TEXT PRIMARY KEY,
    price REAL NOT NULL,
    minutes INTEGER NOT NULL,
    openings INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS appointments (
    appointment_id TEXT PRIMARY KEY,
    guest TEXT NOT NULL,
    service TEXT NOT NULL,
    appointment_time TEXT NOT NULL,
    status TEXT NOT NULL
);

-- Starts empty. Requests appear when the agent files them.
CREATE TABLE IF NOT EXISTS change_requests (
    number INTEGER PRIMARY KEY AUTOINCREMENT,
    appointment_id TEXT NOT NULL,
    new_value TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'waiting'
);

INSERT OR IGNORE INTO services (name, price, minutes, openings) VALUES
    ('swedish massage', 95.00, 60, 5),
    ('deep tissue massage', 120.00, 60, 4),
    ('hot stone massage', 135.00, 75, 2),
    ('signature facial', 110.00, 50, 3),
    ('body scrub', 85.00, 45, 0),
    ('aromatherapy wrap', 100.00, 60, 6);

INSERT OR IGNORE INTO appointments (appointment_id, guest, service, appointment_time, status) VALUES
    ('S100', 'Maddie Bishop', 'deep tissue massage', 'Sat 2:00 pm', 'confirmed'),
    ('S101', 'Priya Patel', 'signature facial', 'Sat 11:00 am', 'confirmed'),
    ('S102', 'Marcus Lee', 'swedish massage', 'Sun 1:00 pm', 'confirmed'),
    ('S103', 'Hannah Brooks', 'hot stone massage', 'Fri 4:30 pm', 'confirmed'),
    ('S104', 'Jordan Smith', 'body scrub', 'Thu 10:00 am', 'cancelled'),
    ('S105', 'Mia Nguyen', 'aromatherapy wrap', 'Sun 3:00 pm', 'confirmed');