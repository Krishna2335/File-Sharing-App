USE file_sharing_app;

-- files table (metadata only; binary stored on disk or S3 recommended)
CREATE TABLE files (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
filename VARCHAR(1024) NOT NULL,
content_type VARCHAR(255),
size_bytes BIGINT DEFAULT 0,
storage_path VARCHAR(2000) DEFAULT NULL, -- path on server or S3 key
uploaded_by BIGINT NOT NULL,
uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
deleted BOOLEAN DEFAULT FALSE,
FOREIGN KEY (uploaded_by) REFERENCES users(id) ON DELETE CASCADE
) ENGINE=InnoDB;