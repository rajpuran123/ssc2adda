CREATE TABLE IF NOT EXISTS posts (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 type TEXT NOT NULL CHECK(type IN ('job','admit','result','answer')),
 title TEXT NOT NULL,
 category TEXT NOT NULL,
 meta TEXT DEFAULT '',
 summary TEXT DEFAULT '',
 url TEXT DEFAULT '',
 file_url TEXT DEFAULT '',
 created_at TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS ad_codes (
 slot TEXT PRIMARY KEY,
 code TEXT NOT NULL DEFAULT ''
);
