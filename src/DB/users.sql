USE file_sharing_app;
-- users table (stores OAuth-linked users as well)
CREATE TABLE users (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
provider VARCHAR(50) DEFAULT NULL,
provider_id VARCHAR(255) DEFAULT NULL,
email VARCHAR(255) NOT NULL,
name VARCHAR(255),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
UNIQUE KEY uq_provider_providerid (provider, provider_id),
UNIQUE KEY uq_email (email)
) ENGINE=InnoDB;