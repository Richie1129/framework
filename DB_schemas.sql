-- 創建 projects 表
CREATE TABLE projects (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT
);

-- 創建 project_states 表
CREATE TABLE project_states (
  id SERIAL PRIMARY KEY,
  project_id INT REFERENCES projects(id),
  state_name TEXT NOT NULL
);

-- 創建 events 表
CREATE TABLE events (
  id SERIAL PRIMARY KEY,
  project_state_id INT REFERENCES project_states(id),
  event_name TEXT NOT NULL,
  event_date DATE
);

-- 創建 routines 表
CREATE TABLE routines (
  id SERIAL PRIMARY KEY,
  event_id INT REFERENCES events(id),
  routine_name TEXT NOT NULL,
  routine_description TEXT
);
