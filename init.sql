CREATE TABLE incorrect_transcription_suggestions (
    id SERIAL PRIMARY KEY,
    episode_line TEXT NOT NULL,
    correction_suggestion TEXT NOT NULL,
    status TEXT DEFAULT 'pending'::TEXT,
    episode_id INTEGER NOT NULL,
    line_number INTEGER NOT NULL,
    suggestion TEXT NOT NULL

);


    
