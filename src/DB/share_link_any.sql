USE file_sharing_app;

-- share_links: generates short tokens for sharing
CREATE TABLE share_link_any (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
file_id BIGINT NOT NULL,
token VARCHAR(128) NOT NULL,
expires_at DATETIME DEFAULT NULL,
max_downloads INT DEFAULT NULL,
downloads INT DEFAULT 0,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
created_by BIGINT NOT NULL
) ENGINE=InnoDB;