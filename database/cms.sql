CREATE DATABASE cms_blog;
USE cms_blog;

-- Users table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Blog posts table
CREATE TABLE posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    title VARCHAR(255),
    content TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Pages table (for drag & drop layout)
CREATE TABLE pages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    page_name VARCHAR(100),
    layout_json TEXT
);
