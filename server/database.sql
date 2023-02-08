-- CREATE DATABASE jwttutorial;

-- -- set extention 
-- CREATE TABLE users(
--     user_id uuid PRIMARY KEY default uuid_generate_v4(),
--     user_name VARCHAR(255) NOT NULL,
--     user_email VARCHAR(255) NOT NULL,
--     user_password VARCHAR(255) NOT NULL
-- );

-- --insert fake users
-- INSERT INTO users(user_name, user_email, user_password) VALUES('henry', 'henry123@gmail.com', 'sqltime123');

CREATE DATABASE authtodolist;

-- users

CREATE TABLE users(
    user_id UUID default uuid_generate_v4(),
    user_name VARCHAR(255) NOT NULL, 
    user_email VARCHAR(255) NOT NULL UNIQUE, 
    user_password VARCHAR(255) NOT NULL,
    PRIMARY KEY (user_id)
);

--todos 
CREATE TABLE todos(
    todo_id SERIAL, 
    user_id UUID,
    description VARCHAR(255) NOT NULL,
    PRIMARY KEY (todo_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- fake users data 

insert into users (user_name, user_email, user_password) VALUES ('Jacob', 'Jacob@gmail.com', 'kthl8822');

-- fake todos data 

insert into todos (user_id, description) VALUES ('dbeb9040-8b68-4aa1-b222-304d035b912c', 'clean room');