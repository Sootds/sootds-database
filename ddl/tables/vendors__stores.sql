CREATE TABLE vendors__stores (
  vendor_id INTEGER NOT NULL,
  store_id INTEGER NOT NULL,
  role_id INTEGER NOT NULL,
  PRIMARY KEY (vendor_id, store_id),
  CONSTRAINT fk_vendor_id FOREIGN KEY (vendor_id) REFERENCES vendors(id),
  CONSTRAINT fk_store_id FOREIGN KEY (store_id) REFERENCES stores(id),
  CONSTRAINT fk_role_id FOREIGN KEY (role_id) REFERENCES roles(id)
);