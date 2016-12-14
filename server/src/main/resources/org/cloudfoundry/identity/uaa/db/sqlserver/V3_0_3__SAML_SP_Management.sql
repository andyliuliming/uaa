CREATE TABLE service_provider (
  id VARCHAR(36) NOT NULL,
  created DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
  lastmodified DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
  version BIGINT DEFAULT 0 NOT NULL,
  identity_zone_id VARCHAR(36) NOT NULL,
  name VARCHAR(255) NOT NULL,
  entity_id VARCHAR(255) NOT NULL,
  config varchar(max),
  active BIT DEFAULT 1 NOT NULL,
  PRIMARY KEY (id)
);


CREATE UNIQUE INDEX entity_in_zone on service_provider (identity_zone_id, entity_id);
