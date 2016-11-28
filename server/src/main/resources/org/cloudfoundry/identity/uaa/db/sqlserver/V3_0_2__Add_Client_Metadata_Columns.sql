ALTER TABLE oauth_client_details ADD show_on_home_page BIT DEFAULT 1 NOT NULL;
ALTER TABLE oauth_client_details ADD app_launch_url VARCHAR(1024);
ALTER TABLE oauth_client_details ADD app_icon VARBINARY(max);
