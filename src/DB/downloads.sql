USE file_sharing_app;

-- optional: audit / downloads log
CREATE TABLE downloads (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
share_link_id BIGINT,
file_id BIGINT,
downloaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
ip_address VARCHAR(45),
user_agent TEXT,
anonymous BOOLEAN DEFAULT TRUE,
downloader_user_id BIGINT DEFAULT NULL
) ENGINE=InnoDB;