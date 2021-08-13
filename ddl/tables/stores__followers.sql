CREATE TABLE stores__followers (
  store_id INTEGER NOT NULL,
  user_id INTEGER NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  PRIMARY KEY (store_id, user_id),
  CONSTRAINT fk_store_id FOREIGN KEY (store_id) REFERENCES stores(id),
  CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users(id)
);