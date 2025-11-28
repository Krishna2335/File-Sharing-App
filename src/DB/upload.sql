USE file_sharing_app;

-- index to speed up lookups
CREATE INDEX idx_token ON share_link_any(token);
CREATE INDEX idx_uploaded_by ON files(uploaded_by);