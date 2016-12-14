ALTER TABLE users ADD legacy_verification_behavior BIT DEFAULT 0 NOT NULL;
GO
UPDATE users SET legacy_verification_behavior = 1;
