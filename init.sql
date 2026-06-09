CREATE TABLE incorrect_translation_suggestions (
    id SERIAL PRIMARY KEY,
    episode_line TEXT NOT NULL,
    correction_suggestion TEXT NOT NULL,
    status TEXT DEFAULT 'pending'::TEXT
);


