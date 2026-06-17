CREATE TYPE STATUS AS ENUM ('pending', 'ignored', 'corrected');
CREATE TABLE transcription_issues (
    id SERIAL PRIMARY KEY,
    episode_id TEXT NOT NULL,
    line_number INTEGER NOT NULL,
    issue TEXT NOT NULL,
    status STATUS DEFAULT 'pending'::STATUS
);
    
