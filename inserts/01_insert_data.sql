Insert into Customers Values(001, 'John Smith', '22 Buck Ln Hammond, LA 70403', '22', '1', 'djohn', 'djohnrules');
Insert into Customers Values(002, 'Drew Brees', '8 Saints Ln New Orleans, LA 70403', '48', '3', 'dbrees', 'saintswin');
Insert into Customers Values(003, 'Dwayne Johnson', '33 Rock Dr Wahiawa, HI 96786', '55', '3', 'rock', 'liftstuff');
Insert into Customers Values(004, 'Cindy Crawford', '99 Star Ln San Diego, CA 91910', '63', '1', 'ccraw', 'lovely');
Insert into Customers Values(005, 'Amy Sailor', '32 Navy Dr Great Lakes, IL 60088', '18', '3', 'amy_sails', 'gonavy');

Insert into Publisher Values(001, 'Penguin Press', '18 Press Way Hammond, LA 70403', 2.00);
Insert into Publisher Values(002, 'Jones Books', '19 Press Way Hammond, LA 70403', 2.00);
Insert into Publisher Values(003, 'Williams Press', '11 Press Way Hammond, LA 70403', 2.00);
Insert into Publisher Values(004, 'Creativity Press', '12 Press Way Hammond, LA 70403', 2.00);
Insert into Publisher Values(005, 'Lit Publishing', '13 Press Way Hammond, LA 70403', 2.00);

Insert into Books Values(001, 'Book 1', 'James Smith', 0, '9.99', '5.00', '1989', 001);
Insert into Books Values(002, 'Book 2', 'Lily White', 10, '50.99', '45.00', '1989', 002);
Insert into Books Values(003, 'Book 3', 'Agatha Waley', 5, '15.99', '10.00', '1989', 002);
Insert into Books Values(004, 'Book 4', 'Jimmy John', 30, '51.99', '45.00', '1989', 003);
Insert into Books Values(005, 'Book 5', 'James Smith', 0, '9.99', '5.00', '1989', 005);

Insert into Orders Values(1, 001, 1, 'March', 2025, '2025-09-20', '2025-09-21');
Insert into Orders Values(2, 001, 1, 'March', 2025, '2025-09-20', '2025-09-21');
Insert into Orders Values(3, 002, 1, 'March', 2025, '2025-09-20', '2025-09-21');
Insert into Orders Values(4, 002, 1, 'March', 2025, '2025-09-20', '2025-09-21');
Insert into Orders Values(5, 003, 1, 'March', 2025, '2025-09-20', '2025-09-21');

Insert into OrderList Values(1, 001, 1);
Insert into OrderList Values(2, 002, 2);
Insert into OrderList Values(3, 003, 2);
Insert into OrderList Values(4, 004, 1);
Insert into OrderList Values(5, 005, 3);

Insert into StockManager Values(001, 0);
Insert into StockManager Values(002, 10);
Insert into StockManager Values(003, 5);
Insert into StockManager Values(004, 30);
Insert into StockManager Values(005, 0);
