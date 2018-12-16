CREATE TABLE CUSTOMER
(
  cm_id INT NOT NULL AUTO_INCREMENT,
  cm_email INT NOT NULL,
  date_of_birth INT NOT NULL,
  PRIMARY KEY (cm_id)
);

CREATE TABLE INVOICE
(
  invoice_id INT NOT NULL,
  type INT NOT NULL,
  invoice_desc INT NOT NULL,
  discount INT NOT NULL,
  VAT INT NOT NULL,
  Tax_Registration_Number INT NOT NULL,
  cm_id INT NOT NULL,
  PRIMARY KEY (invoice_id),
  FOREIGN KEY (cm_id) REFERENCES CUSTOMER(cm_id)
);

CREATE TABLE RESERVATION
(
  reservation_id INT NOT NULL,
  start_date INT NOT NULL,
  end_date INT NOT NULL,
  no_adults INT NOT NULL,
  no_children INT NOT NULL,
  invoice_id INT NOT NULL,
  PRIMARY KEY (reservation_id),
  FOREIGN KEY (invoice_id) REFERENCES INVOICE(invoice_id)
);

CREATE TABLE SERVICE
(
  service_id INT NOT NULL,
  service_type INT NOT NULL,
  service_name INT NOT NULL,
  service_price INT NOT NULL,
  service_desc INT NOT NULL,
  PRIMARY KEY (service_id)
);

CREATE TABLE makes
(
  cm_id INT NOT NULL,
  reservation_id INT NOT NULL,
  PRIMARY KEY (cm_id, reservation_id),
  FOREIGN KEY (cm_id) REFERENCES CUSTOMER(cm_id),
  FOREIGN KEY (reservation_id) REFERENCES RESERVATION(reservation_id)
);

CREATE TABLE ROOM_CATEGORY
(
  category_id INT NOT NULL,
  room_name INT NOT NULL,
  category_desc INT NOT NULL,
  reservation_id INT NOT NULL,
  PRIMARY KEY (category_id),
  FOREIGN KEY (reservation_id) REFERENCES RESERVATION(reservation_id),
  UNIQUE (room_name)
);

CREATE TABLE ROOM
(
  room_number INT NOT NULL,
  adults INT NOT NULL,
  children INT NOT NULL,
  room_selling_point INT NOT NULL,
  floor_no INT NOT NULL,
  check_in_date INT NOT NULL,
  cehck_out_date INT NOT NULL,
  category_id INT NOT NULL,
  PRIMARY KEY (room_number),
  FOREIGN KEY (category_id) REFERENCES ROOM_CATEGORY(category_id)
);

CREATE TABLE PRICE
(
  value INT NOT NULL,
  season INT NOT NULL,
  category_id INT NOT NULL,
  PRIMARY KEY (category_id),
  FOREIGN KEY (category_id) REFERENCES ROOM_CATEGORY(category_id)
);
