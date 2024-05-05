DROP DATABASE IF EXISTS PROJECT_HOME_APPLIANCE_INVENTORY_MANAGEMENT;
CREATE DATABASE PROJECT_HOME_APPLIANCE_INVENTORY_MANAGEMENT;
USE PROJECT_HOME_APPLIANCE_INVENTORY_MANAGEMENT;

-- orderstatus audit
CREATE TABLE OrderStatusAudit 
( AuditID int PRIMARY KEY auto_increment, orderstatusid INT NOT NULL, OrderID INT NOT NULL, Status VARCHAR(50) NOT NULL, statusDate DATETIME NOT NULL, ModifiedAt DATE );
-- employee audit table
CREATE TABLE EmployeeAudit ( AuditID int PRIMARY KEY auto_increment, EmployeeID INT , FirstName VARCHAR(255), LastName VARCHAR(255), Email VARCHAR(255), Phone VARCHAR(20), Address VARCHAR(255), City VARCHAR(255), State VARCHAR(255), Country VARCHAR(255), HireDate DATE, Salary DECIMAL(10,2), Department VARCHAR(255), ModifiedAt DATE );
-- discount audit table
CREATE TABLE DiscountsAudit ( AuditID INT PRIMARY KEY AUTO_INCREMENT, DiscountID INT, ProductID INT, DiscountType VARCHAR(255), DiscountAmount DECIMAL(10, 2), StartDate DATE, EndDate DATE, ModifiedAt DATE );


/*1: Category table:*/
DROP TABLE IF EXISTS Category;
CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    Name VARCHAR(255),
	Description TEXT
);

INSERT INTO Category (CategoryID, Name, Description)
VALUES  
    (1001, 'Electronics', 'Electronic devices and accessories'),
    (1002, 'Clothing', 'Clothing and fashion accessories'),
    (1003, 'Books', 'Books and reading materials'),
    (1004, 'Home and Garden', 'Home decor, furniture, and gardening supplies'),
    (1005, 'Sports and Outdoors', 'Sports equipment and outdoor recreation supplies'),
    (1006, 'Toys and Games', 'Toys, games, and puzzles'),
    (1007, 'Beauty and Personal Care', 'Beauty and personal care products'),
    (1008, 'Health and Wellness', 'Health and wellness products'),
    (1009, 'Food and Beverages', 'Food and beverage products'),
    (1010, 'Automotive', 'Automotive parts and accessories'),
    (1011, 'Pet Supplies', 'Pet food and supplies'),
    (1012, 'Office Supplies', 'Office supplies and equipment'),
    (1013, 'Musical Instruments', 'Musical instruments and accessories'),
    (1014, 'Arts and Crafts', 'Art supplies and crafting materials'),
    (1015, 'Jewelry', 'Jewelry and accessories'),
    (1016, 'Baby and Kids', 'Products for babies and children'),
    (1017, 'Travel and Luggage', 'Luggage, travel accessories, and gear'),
    (1018, 'Movies and Music', 'Movies and music media'),
    (1019, 'Collectibles and Memorabilia', 'Collectible items and memorabilia'),
    (1020, 'Antiques and Vintage', 'Antiques and vintage items'),
    (1021, 'Home Appliances', 'Home appliances and electronics'),
    (1022, 'Computer Hardware', 'Computer hardware and components'),
    (1023, 'Software', 'Software applications and programs'),
    (1024, 'Cameras and Photography', 'Cameras and photography equipment'),
    (1025, 'Mobile Devices and Accessories', 'Mobile phones and accessories'),
    (1026, 'Musical Instruments and Gear', 'Musical instruments and gear'),
    (1027, 'Office Equipment and Supplies', 'Office equipment and supplies'),
    (1028, 'Outdoor Recreation', 'Outdoor recreation equipment and supplies'),
    (1029, 'Pet Supplies and Accessories', 'Pet food, toys, and accessories'),
    (1030, 'Power and Hand Tools', 'Power and hand tools for DIY and professional use'),
    (1031, 'Safety and Security', 'Safety and security products and equipment'),
    (1032, 'Smart Home', 'Smart home devices and accessories'),
    (1033, 'Software and Computer Services', 'Software applications and computer services'),
    (1034, 'Sports Equipment and Clothing', 'Sports equipment and clothing for athletes and enthusiasts'),
    (1035, 'Toys and Games for Kids', 'Toys and games for children of all ages'),
    (1036, 'Travel and Adventure', 'Travel gear and adventure supplies'),
    (1037, 'Watches and Accessories', 'Watches and accessories for men and women'),
    (1038, 'Wedding and Bridal', 'Wedding and bridal accessories and supplies'),
    (1039, 'Wireless and Mobile', 'Wireless and mobile devices and accessories'),
    (1040, 'Arts and Crafts Supplies', 'Arts and crafts supplies for creative projects'),
    (1041, 'Beauty and Skincare', 'Beauty and skincare products for men and women'),
    (1042, 'Books and Literature', 'Books and literature for all ages and interests'),
    (1043, 'Business and Industrial', 'Business and industrial equipment and supplies'),
	(1044, 'Home and Garden supplies', 'Home decor, arts, and gardening supplies'),
    (1045, 'Sports and Outdoors gadgets ', 'Sports equipment and  recreation supplies'),
    (1046, 'Toys and Games kids', 'Toys, games, and sequnces'),
    (1047, 'Beauty and Personal Care products', 'Beauty and personal care products kit'),
    (1048, 'Health and Wellness kit ', 'Health and wellness kits'),
    (1049, 'Food and Beverages cups ', 'Food and beverage cups'),
    (1050, 'Automotive support', 'Automotive parts and support system for cars ');


/*2: Manufacturer table:*/
DROP TABLE IF EXISTS Manufacturer;
CREATE TABLE Manufacturer (
    ManufacturerID INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    Country VARCHAR(255),
    Phone VARCHAR(20),
    Email VARCHAR(255),
    ContactName VARCHAR(255),
    ContactPhone VARCHAR(20),
    ContactEmail VARCHAR(255)
);

INSERT INTO Manufacturer (ManufacturerID, Name, Address, City, State, Country, Phone, Email, ContactName, ContactPhone, ContactEmail) VALUES
(2001, 'Nestle', 'Avenue Nestlé 55', 'Vevey', 'Vaud', 'Switzerland', '+41-21-924-1111', 'contact@nestle.com', 'Mark Schneider', '+41-21-924-1111', 'mschneider@nestle.com'),
(2002, 'Unilever', '100 Victoria Embankment', 'London', 'Greater London', 'United Kingdom', '+44-20-7822-5252', 'unileverpressuk@unilever.com', 'Alan Jope', '+44-20-7822-5252', 'alan.jope@unilever.com'),
(2003, 'General Mills', '1 General Mills Blvd', 'Golden Valley', 'Minnesota', 'United States', '+1-763-764-7600', 'questions@genmills.com', 'Jeffrey Harmening', '+1-763-764-7600', 'jeff.harmening@genmills.com'),
(2004, 'Kellogg''s', 'One Kellogg Square', 'Battle Creek', 'Michigan', 'United States', '+1-269-961-2000', 'media.hotline@kellogg.com', 'Steve Cahillane', '+1-269-961-2000', 'steve.cahillane@kellogg.com'),
(2005, 'Procter & Gamble', 'One Procter & Gamble Plaza', 'Cincinnati', 'Ohio', 'United States', '+1-513-983-1100', 'mediarelations.im@pg.com', 'David S. Taylor', '+1-513-983-1100', 'david.taylor@pg.com'),
(2006, 'Kraft Heinz', 'One PPG Place', 'Pittsburgh', 'Pennsylvania', 'United States', '+1-412-456-5700', 'media.hotline@kraftheinzcompany.com', 'Miguel Patricio', '+1-412-456-5700', 'miguel.patricio@kraftheinzcompany.com'),
(2007, 'Hershey''s', '19 East Chocolate Avenue', 'Hershey', 'Pennsylvania', 'United States', '+1-800-468-1714', 'corpcomm@hersheys.com', 'Michele Buck', '+1-800-468-1714', 'michele.buck@hersheys.com'),
(2008, 'Mars, Incorporated', '6885 Elm Street', 'McLean', 'Virginia', 'United States', '+1-703-821-4900', 'info@effem.com', 'Grant F. Reid', '+1-703-821-4900', 'grant.reid@effem.com'),
(2009, 'Johnsonville Sausage', 'N6928 Johnsonville Way', 'Sheboygan Falls', 'Wisconsin', 'United States', '+1-888-556-2728', 'info@johnsonville.com', 'Nick Meriggioli', '+1-888-556-2728', 'nick.meriggioli@johnsonville.com'),
(2010, 'McCormick & Company', '18 Loveton Circle', 'Sparks', 'Maryland', 'United States', '+1-410-771-7301', 'info@mccormick.com', 'Lawrence E. Kurtis','+1-410-771-7462','law.k@mccormick.com'),
(2011, 'Frito-Lay', '7701 Legacy Dr', 'Plano', 'Texas', 'USA', '1-800-352-4477', 'contact@fritolay.com', 'John Smith', '1-800-555-1234', 'jsmith@fritolay.com'),
(2012, 'The Kraft Heinz Company', 'P.O. Box 57', 'Northfield', 'Illinois', 'USA', '1-877-535-5666', 'info@kraftheinzcompany.com', 'Amy Johnson', '1-800-555-5678', 'ajohnson@kraftheinzcompany.com'),
(2013, 'The J.M. Smucker Company', '1 Strawberry Ln', 'Orrville', 'Ohio', 'USA', '1-888-550-9555', 'info@jmsmucker.com', 'Mark Lee', '1-800-555-5555', 'mlee@jmsmucker.com'),
(2014, 'The Coca-Cola Company', '1 Coca-Cola Plz', 'Atlanta', 'Georgia', 'USA', '1-800-438-2653', 'info@coca-cola.com', 'Julie Chen', '1-800-555-1212', 'jchen@coca-cola.com'),
(2015, 'PepsiCo, Inc.', '700 Anderson Hill Rd', 'Purchase', 'New York', 'USA', '1-800-433-2652', 'contactus@pepsico.com', 'Mike Johnson', '1-800-555-1234', 'mjohnson@pepsico.com'),
(2016, 'The Hershey Company', '100 Crystal A Dr', 'Hershey', 'Pennsylvania', 'USA', '1-800-468-1714', 'info@hersheys.com', 'Sarah Kim', '1-800-555-5555', 'skim@hersheys.com'),
(2017, 'Conagra Brands, Inc.', '222 W Merchandise Mart Plaza', 'Chicago', 'Illinois', 'USA', '1-877-CONAGRA', 'contact@conagrabrands.com', 'David Lee', '1-800-555-5555', 'dlee@conagrabrands.com'),
(2018, 'Mondelez International, Inc.', '100 Deforest Ave', 'East Hanover', 'New Jersey', 'USA', '1-855-535-5648', 'questions@mdlz.com', 'Emily Davis', '1-800-555-1212', 'edavis@mdlz.com'),
(2019, 'Campbell Soup Company', '1 Campbell Pl', 'Camden', 'New Jersey', 'USA', '1-800-257-8443', 'contact@campbellsoupcompany.com', 'Chris Lee', '1-800-555-5555', 'clee@campbellsoupcompany.com'),
(2020, 'The Clorox Company', '1221 Broadway', 'Oakland', 'California', 'USA', '1-800-227-1860', 'contact@clorox.com', 'Linda Kim', '1-800-555-5555', 'lkim@clorox.com'),
(2021, 'Nestle Purina PetCare Company', 'Checkerboard Square', 'St. Louis', 'Missouri', 'USA', '+1-800-778-7462', 'info@purina.com', 'Fiona Bateman', '+1-800-778-7462', 'fbateman@purina.com'),
(2022, 'The Procter & Gamble Company', '1 P&G Plaza', 'Cincinnati', 'Ohio', 'USA', '+1-513-983-1100', 'pginvestor.im@pg.com', 'David S. Taylor', '+1-513-983-1100', 'taylor.ds@pg.com'),
(2023, 'The Coca-Cola Company', 'One Coca-Cola Plaza', 'Atlanta', 'Georgia', 'USA', '+1-800-438-2653', 'investor.relations@coca-cola.com', 'James Quincey', '+1-800-438-2653', 'jquincey@coca-cola.com'),
(2024, 'PepsiCo, Inc.', '700 Anderson Hill Road', 'Purchase', 'New York', 'USA', '+1-914-253-2000', 'investor@pepsico.com', 'Ramon Laguarta', '+1-914-253-2000', 'ramon.laguarta@pepsico.com'),
(2025, 'Tyson Foods, Inc.', '2200 W. Don Tyson Parkway', 'Springdale', 'Arkansas', 'USA', '+1-479-290-4000', 'ir@tyson.com', 'Donnie King', '+1-479-290-4000', 'donnie.king@tyson.com'),
(2026, 'Campbell Soup Company', '1 Campbell Place', 'Camden', 'New Jersey', 'USA', '+1-800-257-8443', 'investor_relations@campbellsoup.com', 'Mark A. Clouse', '+1-800-257-8443', 'mark.clouse@campbellsoup.com'),
(2027, 'Colgate-Palmolive Company', '300 Park Avenue', 'New York', 'New York', 'USA', '+1-212-310-2000', 'investor_relations@colpal.com', 'Noel R. Wallace', '+1-212-310-2000', 'noel.wallace@colpal.com'),
(2028, 'Hershey Company', '19 E. Chocolate Avenue', 'Hershey', 'Pennsylvania', 'USA', '+1-717-534-4200', 'investorrelations@hersheys.com', 'Michele Buck', '+1-717-534-4200', 'mbuck@hersheys.com'),
(2029, 'Kellogg Company', 'One Kellogg Square', 'Battle Creek', 'Michigan', 'USA', '+1-269-961-2000', 'investor.relations@kellogg.com', 'Steven Cahillane', '+1-269-961-2000', 'steven.cahillane@kellogg.com'),
(2030, 'Nabisco','Deforest Avenue', 'East Hanover', 'New Jersey', 'USA', '+1-800-622-4726', 'contactus.na@mdlz.com', 'Dirk Van de Put', '+1-800-622-4726', 'dirk.v@nabisco.com'),
(2031, 'McCain Foods', '227 rue Louis', 'Boucherville', 'Quebec', 'Canada', '450-655-1212', 'info@mccain.ca', 'Maxwell McCain', '450-655-1212', 'maxwell@mccain.ca'),
(2032, 'Nature\'s Path Foods', '9100 Van Horne Way', 'Richmond', 'British Columbia', 'Canada', '604-248-8858', 'info@naturespath.com', 'Arran Stephens', '604-248-8858', 'arran@naturespath.com'),
(2033, 'Nestlé Purina PetCare', 'Checkerboard Square', 'St. Louis', 'Missouri', 'USA', '800-778-7462', 'https://www.purina.com/contact-us', 'Mark Schoppet', '800-778-7462', 'mark.schoppet@purina.nestle.com'),
(2034, 'Ocean Spray Cranberries', 'One Ocean Spray Drive', 'Lakeville-Middleboro', 'Massachusetts', 'USA', '508-946-1000', 'https://www.oceanspray.com/Contact-Us', 'Brendan Foley', '508-946-1000', 'brendan.foley@oceanspray.com'),
(2035, 'Perdue Farms', '31149 Old Ocean City Road', 'Salisbury', 'Maryland', 'USA', '410-543-3000', 'https://www.perduefarms.com/contact-us', 'Jim Perdue', '410-543-3000', 'jim.perdue@perdue.com'),
(2036, 'Rich Products Corporation', '1150 Niagara Street', 'Buffalo', 'New York', 'USA', '716-878-8000', 'info@rich.com', 'William G. Gisel Jr.', '716-878-8000', 'william.gisel@rich.com'),
(2037, 'Smithfield Foods', '200 Commerce Street', 'Smithfield', 'Virginia', 'USA', '757-365-3000', 'https://www.smithfieldfoods.com/contact', 'Dennis Treacy', '757-365-3000', 'dennis.treacy@smithfieldfoods.com'),
(2038, 'The Kraft Heinz Company', 'One PPG Place', 'Pittsburgh', 'Pennsylvania', 'USA', '412-456-5700', 'https://www.kraftheinzcompany.com/contact-us.html', 'Miguel Patricio', '412-456-5700', 'miguel.patricio@kraftheinzcompany.com'),
(2039, 'The Scotts Miracle-Gro Company', '14111 Scottslawn Road', 'Marysville', 'Ohio', 'USA', '937-644-0011', 'https://www.scottsmiraclegro.com/contact-us', 'Jim Hagedorn', '937-644-0011', 'jim.hagedorn@scotts.com'),
(2040, 'The Hershey Company', '19 East Chocolate Avenue', 'Hershey', 'Pennsylvania', 'USA', '717-534-4200', 'https://www.hersheys.com/en_us/contact-us.html', 'Michele Buck', '717-534-4200', 'michele.buck@hersheys.com'),
(2041, 'The Kraft Heinz Company', 'P.O. Box 57', 'Northfield', 'IL', 'USA', '1-877-535-5666', 'info@kraftheinzcompany.com', 'Miguel Patricio', '1-877-535-5666', 'info@kraftheinzcompany.com'),
(2042, 'The Hershey Company', '19 East Chocolate Avenue', 'Hershey', 'PA', 'USA', '1-800-468-1714', 'questions@hersheys.com', 'Michele Buck', '1-800-468-1714', 'questions@hersheys.com'),
(2043, 'Conagra Brands', '222 W. Merchandise Mart Plaza, Suite 1300', 'Chicago', 'IL', 'USA', '1-877-CONAGRA', 'webinfo@conagrafoods.com', 'Sean Connolly', '1-877-CONAGRA', 'webinfo@conagrafoods.com'),
(2044, 'Mondelez International', 'Three Parkway North', 'Deerfield', 'IL', 'USA', '1-855-535-5648', 'questions@mdlz.com', 'Dirk Van de Put', '1-855-535-5648', 'questions@mdlz.com'),
(2045, 'Campbell Soup Company', '1 Campbell Place', 'Camden', 'NJ', 'USA', '1-800-257-8443', 'feedback@campbells.com', 'Mark Clouse', '1-800-257-8443', 'feedback@campbells.com'),
(2046, 'The Clorox Company', '1221 Broadway', 'Oakland', 'CA', 'USA', '1-800-227-1860', 'notprovided@clorox.com', 'Linda Rendle', '1-800-227-1860', 'notprovided@clorox.com'),
(2047, 'The Hain Celestial Group', '1111 Marcus Avenue', 'Lake Success', 'NY', 'USA', '1-800-434-4246', 'consumeraffairs@hain-celestial.com', 'Mark L. Schiller', '1-800-434-4246', 'consumeraffairs@hain-celestial.com'),
(2048, 'McCain Foods Limited', '8800 Main St', 'Florenceville-Bristol', 'NB', 'Canada', '+1 506-392-5541', 'info@mccain.ca', 'Max Koeune', '+1 506-392-5541', 'max.koeune@mccain.ca'),
(2049, 'Frito-Lay, Inc.', '7701 Legacy Dr', 'Plano', 'TX', 'USA', '+1 800-352-4477', 'contactus@fritolay.com', 'Steven Williams', '+1 800-352-4477', 'steven.williams@pepsico.com'),
(2050, 'Smithfield Foods, Inc.', '200 Commerce St', 'Smithfield ', 'VA', 'USA', '+1 757-365-3000', 'info@smithfieldfoods.com', 'Dennis Organ', '+1 757-365-3000', 'dennisorgan@smithfieldfoods.com');



/*3: Product table:*/

DROP TABLE IF EXISTS Product;
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    Description TEXT,
    ManufacturerID INT,
    CategoryID INT,
    Cost DECIMAL(10,2),
    CONSTRAINT fk_manufacturer FOREIGN KEY (ManufacturerID)
        REFERENCES Manufacturer(ManufacturerID),
    CONSTRAINT fk_category FOREIGN KEY (CategoryID)
        REFERENCES Category(CategoryID)
);

INSERT INTO Product (ProductID, ProductName, Description, ManufacturerID, CategoryID, Cost)
VALUES 
  (3001, 'KitchenAid Stand Mixer', 'A powerful stand mixer perfect for baking and cooking.',2001, 1001, 10.99),
  (3002, 'Dyson V11 Vacuum', 'A cordless vacuum with powerful suction and long battery life.', 2002, 1003, 50.25),
  (3003, 'Instant Pot', 'A multi-functional pressure cooker, slow cooker, and rice cooker.', 2001, 1002, 75.00),
  (3004, 'Samsung Family Hub Refrigerator', 'A smart fridge with a touchscreen and voice assistant capabilities.', 2003, 1004, 99.99),
  (3005, 'Roomba Robot Vacuum', 'A robotic vacuum cleaner that automatically navigates around your home.', 2004, 1005, 42.50),
  (3006, 'Breville Smart Oven', 'A compact and versatile countertop oven that can bake, broil, and toast.', 2002, 1005, 25.99),
  (3007, 'Ninja Blender', 'A powerful blender with multiple settings and attachments for smoothies, soups, and more.', 2001, 1005, 120.00),
  (3008, 'GE Profile Gas Range', 'A high-end gas range with advanced features such as Wi-Fi connectivity and self-cleaning.', 2004, 1002, 60.00),
  (3009, 'LG OLED TV', 'A stunning 4K TV with rich colors and deep blacks.', 2005, 1001, 35.50),
  (3010, 'Whirlpool Top Load Washer', 'A reliable and efficient washing machine with multiple wash cycles.', 2005,1004, 85.25),
  (3011, 'Frigidaire Window Air Conditioner', 'A powerful AC unit that can cool down a room quickly.', 2005, 1006, 15.00),
  (3012, 'Vitamix Blender', 'A professional-grade blender that can blend even the toughest ingredients.', 2005, 1006, 125.99),
  (3013, 'Shark Navigator Vacuum', 'A lightweight and versatile upright vacuum with advanced filtration.', 2006, 1007, 80.00),
  (3014, 'Bosch Dishwasher', 'A quiet and efficient dishwasher with multiple wash options.', 2007, 1001, 30.99),
  (3015, 'Philips Air Fryer', 'A compact and efficient air fryer that can fry food without oil.', 2003, 1004, 95.00),
  (3016, 'Cuisinart Coffee Maker', 'A programmable coffee maker that can brew coffee and tea.', 2004, 1003, 52.50),
  (3017, 'LG Front Load Dryer', 'A high-end dryer with multiple drying options and a large capacity.', 2001, 1002, 110.00),
  (3018, 'KitchenAid Food Processor', 'A powerful food processor that can chop, puree, and blend.', 2002, 1008, 70.25),
  (3019, 'iRobot Braava Jet M6', 'A robotic mop that can clean your floors automatically.', 2003, 1009, 20.00),
  (3020, 'Samsung Smart TV', 'A sleek and modern TV with a variety of smart features.', 2004, 1009, 150.99),
  (3021, 'LG French Door Refrigerator', 'A spacious and energy-efficient fridge with a bottom freezer.', 2005, 1009, 90.00),
  (3022, 'Dyson Air Purifier', 'A powerful air purifier that can remove allergens and pollutants from the air.', 2005, 1009, 35.99),
  (3023, 'Maytag Top Load Dryer', 'A reliable and durable dryer with multiple drying options.', 2006, 1009, 50.00),
  (3024, 'Anova Sous Vide Cooker', 'A precision cooker that can cook food to the perfect temperature.', 2008, 1001, 25.50),
  (3025, 'Ninja Foodi Grill', 'A versatile indoor grill that can also air fry, bake, and roast.', 2008, 1004, 75.25),
  (3026, 'GE Profile French Door Refrigerator', 'A stylish and spacious fridge with multiple compartments.', 2009, 1003, 10.00),
  (3027, 'Shark Rocket Vacuum', 'A lightweight and powerful stick vacuum with advanced suction.', 2004, 1002, 115.99),
  (3028, 'Bissell ProHeat Carpet Cleaner', 'A powerful carpet cleaner with multiple cleaning modes.', 2001, 1010, 60.00),
  (3029, 'KitchenAid Ice Cream Maker', 'A fun and easy-to-use ice cream maker.', 2002, 1001, 40.99),
  (3030, 'LG Portable Air Conditioner', 'A compact and portable AC unit that can cool down a room quickly.', 2009, 1004, 85.00),
  (3031, 'Hoover Power Scrub Elite Carpet Cleaner', 'A reliable and efficient carpet cleaner with advanced features.', 2009, 1003, 62.50),
  (3032, 'Black and Decker Toaster Oven', 'A compact and versatile toaster oven that can bake and broil.', 2010, 1002, 130.00),
  (3033, 'Frigidaire Gas Range', 'A high-quality gas range with multiple cooking options.', 2010, 1004, 90.25),
  (3034, 'Samsung Frame TV', 'A unique TV that can double as a work of art.', 2010, 1005, 30.00),
  (3035, 'KitchenAid Immersion Blender', 'A handheld blender that can puree and blend ingredients directly in a pot or bowl.', 2004, 1008, 175.99),
  (3036, 'Whirlpool Side-by-Side Refrigerator', 'A spacious and energy-efficient fridge with multiple compartments.', 2001, 1009, 100.00),
  (3037, 'Honeywell Air Purifier', 'A compact and efficient air purifier with multiple filters.', 2002, 1007, 45.99),
  (3038, 'LG Air Purifier', 'A compact and efficient air purifier with multiple filters.', 2003, 1002, 70.00),
  (3039, 'Honeywell Side-by-Side Refrigerator', 'A spacious and energy-efficient fridge with multiple compartments.', 2004, 1001, 15.50),
  (3040, 'Whirlpool Immersion Blender', 'A handheld blender that can puree and blend ingredients directly in a pot or bowl.', 2002, 1004, 65.25),
  (3041, 'KitchenAid Frame TV', 'A unique TV that can double as a work of art.', 2006, 1003, 5.00),
  (3042, 'Samsung Gas Range', 'A high-quality gas range with multiple cooking options.', 2006, 1007, 135.99),
  (3043, 'Frigidaire Toaster Oven', 'A compact and versatile toaster oven that can bake and broil.', 2007, 1007, 50.00),
  (3044, 'Black and Decker Scrub Elite Carpet Cleaner', 'A reliable and efficient carpet cleaner with advanced features.', 2002, 1008, 20.99),
  (3045, 'Hoover Air Conditioner', 'A compact and portable AC unit that can cool down a room quickly.', 2003, 1008, 75.00),
  (3046, 'LG Ice Cream Maker', 'A fun and easy-to-use ice cream maker.', 2004, 1003, 32.50),
  (3047, 'Kitchenaid Carpet Cleaner', 'A powerful carpet cleaner with multiple cleaning modes.', 2010, 1003, 32.50),
  (3048, 'Bisell Rocket Vacuum', 'A lightweight and powerful stick vacuum with advanced suction.', 2008, 1010, 32.50),
  (3049, 'Shark French Door Refrigerator', 'A stylish and spacious fridge with multiple compartments.', 2009, 1005, 32.50),
  (3050, 'GE Foodi Grill', 'A versatile indoor grill that can also air fry, bake, and roast.', 2006, 1006, 32.50);


/*4: Supplier table: */
DROP TABLE IF EXISTS Supplier;
CREATE TABLE Supplier (
    SupplierID INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    Country VARCHAR(255),
    Phone VARCHAR(20),
    Email VARCHAR(255),
    ContactName VARCHAR(255),
    ContactPhone VARCHAR(20),
    ContactEmail VARCHAR(255)
);

INSERT INTO Supplier (SupplierID, Name, Address, City, State, Country, Phone, Email, ContactName, ContactPhone, ContactEmail) 
VALUES
(4001, 'ABC Corporation', '123 Main St', 'Anytown', 'CA', 'USA', '555-555-1212', 'sales@abccorp.com', 'John Smith', '555-555-1213', 'jsmith@abccorp.com'),
(4002, 'XYZ Enterprises', '456 Elm St', 'Anycity', 'NY', 'USA', '555-555-2121', 'sales@xyzent.com', 'Jane Doe', '555-555-2122', 'jdoe@xyzent.com'),
(4003, 'Acme Supply Co', '789 Oak St', 'Anystate', 'TX', 'USA', '555-555-3131', 'sales@acmesupply.com', 'Mike Johnson', '555-555-3132', 'mjohnson@acmesupply.com'),
(4004, '123 Industries', '321 Pine St', 'Anycity', 'CA', 'USA', '555-555-4141', 'sales@123ind.com', 'Sara Lee', '555-555-4142', 'slee@123ind.com'),
(4005, '456 Corporation', '654 Maple St', 'Anytown', 'NY', 'USA', '555-555-5151', 'sales@456corp.com', 'Tim Brown', '555-555-5152', 'tbrown@456corp.com'),
(4006, '789 Enterprises', '987 Oak St', 'Anystate', 'TX', 'USA', '555-555-6161', 'sales@789ent.com', 'Mary Johnson', '555-555-6162', 'mjohnson@789ent.com'),
(4007, 'ABC Supply Co', '456 Elm St', 'Anycity', 'CA', 'USA', '555-555-7171', 'sales@abcsupply.com', 'Tom Smith', '555-555-7172', 'tsmith@abcsupply.com'),
(4008, 'XYZ Corporation', '123 Main St', 'Anytown', 'NY', 'USA', '555-555-8181', 'sales@xyzcorp.com', 'Kate Doe', '555-555-8182', 'kdoe@xyzcorp.com'),
(4009, 'Acme Industries', '789 Oak St', 'Anystate', 'TX', 'USA', '555-555-9191', 'sales@acmeind.com', 'Mark Johnson', '555-555-9192', 'mjohnson@acmeind.com'),
(4010, '123 Enterprises', '321 Pine St', 'Anycity', 'CA', 'USA', '555-555-0202', 'sales@123ent.com', 'Liz Lee', '555-555-0203', 'llee@123ent.com'),
(4011, '456 Supply Co', '654 Maple St', 'Anytown', 'NY', 'USA', '555-555-1212', 'sales@456supply.com', 'Alex Brown', '555-555-1213', 'abrown@456supply.com'),
(4012, '789 Corporation', '987 Oak St', 'Anystate', 'TX', 'USA', '555-555-2222', 'sales@789corp.com', 'Sarah Johnson', '555-555-2223', 'sjohnson@789corporation.com'),
(4013, 'ABC Industries', '123 Main St', 'Anytown', 'CA', 'USA', '555-123-4567', 'sales@abcindustries.com', 'John Smith', '555-234-5678', 'jsmith@abcindustries.com'),
(4014, 'XYZ Corp', '456 Oak Ave', 'Othertown', 'NY', 'USA', '555-987-6543', 'sales@xyzcorp.com', 'Mary Johnson', '555-876-5432', 'mjohnson@xyzcorp.com'),
(4015, 'Acme Supplies', '789 Elm St', 'Smalltown', 'TX', 'USA', '555-345-6789', 'sales@acmesupplies.com', 'Bob Williams', '555-654-3210', 'bwilliams@acmesupplies.com'),
(4016, 'Great Products', '321 Pine Ave', 'Bigtown', 'FL', 'USA', '555-234-5678', 'sales@greatproducts.com', 'Jane Lee', '555-543-2109', 'jlee@greatproducts.com'),
(4017, 'Sunrise Distributors', '456 Main St', 'Sunrise City', 'CA', 'USA', '555-765-4321', 'sales@sunrisedistributors.com', 'Mike Davis', '555-456-7890', 'mdavis@sunrisedistributors.com'),
(4018, 'Allied Industries', '789 Oak Dr', 'Riverdale', 'GA', 'USA', '555-234-5678', 'sales@alliedindustries.com', 'Karen Wilson', '555-678-9012', 'kwilson@alliedindustries.com'),
(4019, 'Bayside Supplies', '234 Pine St', 'Bayside', 'NJ', 'USA', '555-345-6789', 'sales@baysidesupplies.com', 'Tom Jones', '555-890-1234', 'tjones@baysidesupplies.com'),
(4020, 'Crestline Products', '567 Elm Ave', 'Crestline', 'OH', 'USA', '555-876-5432', 'sales@crestlineproducts.com', 'Sue Brown', '555-321-0987', 'sbrown@crestlineproducts.com'),
(4021, 'Global Distributors', '890 Oak St', 'Global City', 'NY', 'USA', '555-234-5678', 'sales@globaldistributors.com', 'Mike Johnson', '555-678-9012', 'mjohnson@globaldistributors.com'),
(4022, 'Westside Supplies', '123 Elm St', 'Westside', 'CA', 'USA', '555-765-4321', 'sales@westsidesupplies.com', 'Karen Davis', '555-210-9876', 'kdavis@westsidesupplies.com'),
(4023, 'ABC Industries', '123 Main St', 'Anytown', 'CA', 'USA', '555-123-4567', 'sales@abcindustries.com', 'John Smith', '555-234-5678', 'jsmith@abcindustries.com'),
(4024, 'ABC Company', '123 Main St', 'Anytown', 'CA', 'USA', '555-123-4567', 'abc@company.com', 'John Smith', '555-987-6543', 'john.smith@company.com'),
(4025, '123 Industries', '789 Broadway', 'Anystate', 'NY', 'USA', '555-345-6789', 'sales@123industries.com', 'Bob Johnson', '555-765-4321', 'bob.johnson@123industries.com'),
(4026, 'The Widget Company', '101 Market St', 'Anyvillage', 'CA', 'USA', '555-456-7890', 'info@widgetco.com', 'Sarah Jones', '555-654-3210', 'sarah.jones@widgetco.com'),
(4027, 'Smith Enterprises', '555 Oak St', 'Anycity', 'CA', 'USA', '555-567-8901', 'info@smithent.com', 'David Lee', '555-432-1098', 'david.lee@smithent.com'),
(4028, 'Acme Corporation', '888 Pine St', 'Anystate', 'NY', 'USA', '555-678-9012', 'sales@acmecorp.com', 'Emily Chen', '555-890-1234', 'emily.chen@acmecorp.com'),
(4029, 'Globe Industries', '333 Elm St', 'Anycity', 'CA', 'USA', '555-789-0123', 'sales@globeind.com', 'Timothy Kim', '555-210-9876', 'timothy.kim@globeind.com'),
(4030, 'Jensen Manufacturing', '555 Cedar St', 'Anystate', 'NY', 'USA', '555-890-1234', 'info@jensenmfg.com', 'Karen Brown', '555-321-0987', 'karen.brown@jensenmfg.com'),
(4031, '123 Widgets', '999 Maple St', 'Anycity', 'CA', 'USA', '555-012-3456', 'info@123widgets.com', 'Erica Johnson', '555-789-0123', 'erica.johnson@123widgets.com'),
(4032, 'Global Enterprises', '777 Walnut St', 'Anystate', 'NY', 'USA', '555-234-5678', 'info@globent.com', 'Michael Chen', '555-456-7890', 'michael.chen@globent.com'),
(4033, 'Smith & Co', '111 Pine St', 'Anycity', 'CA', 'USA', '555-678-9012', 'info@smithco.com', 'Amanda Lee', '555-890-1234', 'amanda.lee@smithco.com'),
(4034, 'Widget Works', '222 Maple St', 'Anystate', 'NY', 'USA', '555-012-3456', 'sales@widgetworks.com', 'Robert Johnson', '555-128-5684', 'RobertJohnson@WidgetWorks.com'),
(4035, 'XYZ Inc', '456 High St', 'Anycity', 'CA', 'USA', '555-234-5678', 'info@xyzinc.com', 'Jane Doe', '555-876-5432', 'jane.doe@xyzinc.com'),
(4036, 'ABC Inc.', '123 Main St', 'New York', 'NY', 'USA', '555-123-4567', 'abc@inc.com', 'John Smith', '555-987-6543', 'jsmith@abc.com'),
(4037, 'XYZ Corp.', '456 Oak Ave', 'Los Angeles', 'CA', 'USA', '555-555-5555', 'info@xyzcorp.com', 'Jane Doe', '555-111-1111', 'jdoe@xyzcorp.com'),
(4038, 'Acme Co.', '789 Elm St', 'Chicago', 'IL', 'USA', '555-222-3333', 'sales@acme.com', 'Bob Johnson', '555-444-5555', 'bjohnson@acme.com'),
(4039, 'Smith & Sons', '321 Maple St', 'Houston', 'TX', 'USA', '555-777-8888', 'info@smithandsons.com', 'Sara Lee', '555-222-4444', 'slee@smithandsons.com'),
(4040, 'Jones Supply', '555 Pine Ave', 'Atlanta', 'GA', 'USA', '555-444-3333', 'sales@jonessupply.com', 'Tom Smith', '555-888-7777', 'tsmith@jonessupply.com'),
(4041, 'Global Imports', '999 Broad St', 'Miami', 'FL', 'USA', '555-111-2222', 'info@globalimports.com', 'Karen Wong', '555-333-4444', 'kwong@globalimports.com'),
(4042, 'FutureTech', '777 Main St', 'San Francisco', 'CA', 'USA', '555-888-9999', 'sales@futuretech.com', 'David Kim', '555-222-3333', 'dkim@futuretech.com'),
(4043, 'Green Mountain Co.', '444 Pine St', 'Burlington', 'VT', 'USA', '555-555-6666', 'info@greenmountainco.com', 'Amy Brown', '555-777-8888', 'abrown@greenmountainco.com'),
(4044, 'Elite Supply', '222 Broadway', 'Boston', 'MA', 'USA', '555-666-7777', 'sales@elitesupply.com', 'Mike Chen', '555-333-2222', 'mchen@elitesupply.com'),
(4045, 'ABC Distributors', '888 Main St', 'Seattle', 'WA', 'USA', '555-444-5555', 'info@abcdistributors.com', 'Emily Lee', '555-111-2222', 'elee@abcdistributors.com'),
(4046, 'XYZ Supplies', '111 State St', 'Dallas', 'TX', 'USA', '555-222-3333', 'sales@xyzsupplies.com', 'Bob Williams', '555-444-5555', 'bwilliams@xyzsupplies.com'),
(4047, 'Acme Hardware', '555 Center St', 'Denver', 'CO', 'USA', '555-333-4444', 'info@acmehardware.com', 'Samantha Lee', '555-888-9999', 'slee@acmehardware.com'),
(4048, 'ABC Inc.', '123 Main St', 'Anytown', 'CA', 'USA', '555-555-1234', 'info@abcinc.com', 'John Smith', '555-555-5678', 'john@abcinc.com'),
(4049, 'XYZ Ltd.', '456 Oak Ave', 'Anycity', 'NY', 'USA', '555-555-2345', 'info@xyzltd.com', 'Jane Doe', '555-555-6789', 'jane@xyzltd.com'),
(4050, '123 Company', '789 Maple St', 'Someville', 'TX', 'USA', '555-555-3456', 'info@123company.com', 'Bob Johnson', '555-555-7890', 'bob@123company.com'),
(4051, 'Acme Corp.', '321 Elm St', 'Othercity', 'IL', 'USA', '555-555-4567', 'info@acmecorp.com', 'Samantha Lee', '555-555-9012', 'samantha@acmecorp.com'),
(4052, 'Global Enterprises', '555 Pine St', 'Bigtown', 'FL', 'USA', '555-555-5678', 'info@globent.com', 'James Rodriguez', '555-555-2345', 'james@globent.com'),
(4053, 'Best Supplies Co.', '222 Cherry Ln', 'Smalltown', 'OR', 'USA', '555-555-6789', 'info@bestsupplies.com', 'Emily Wong', '555-555-3456', 'emily@bestsupplies.com'),
(4054, 'Top Suppliers LLC', '777 Ash St', 'Largetown', 'NC', 'USA', '555-555-7890', 'info@topsuppliers.com', 'David Kim', '555-555-4567', 'david@topsuppliers.com'),
(4055, 'Proven Products Inc.', '888 Cedar Rd', 'Mediumtown', 'GA', 'USA', '555-555-9012', 'info@provenproducts.com', 'Rachel Chen', '555-555-5678', 'rachel@provenproducts.com'),
(4056, 'Expert Suppliers', '444 Oakwood Dr', 'Hometown', 'PA', 'USA', '555-555-2345', 'info@expertsuppliers.com', 'Mike Johnson', '555-555-6789', 'mike@expertsuppliers.com'),
(4057, 'First Choice Supply Co.', '999 Pine Ave', 'Cityville', 'LA', 'USA', '555-555-3456', 'info@firstchoicesupply.com', 'Lisa Brown', '555-555-7890', 'lisa@firstchoicesupply.com'),
(4058, 'Superior Supplies', '111 Maple Dr', 'Somewhere', 'NV', 'USA', '555-555-4567', 'info@superiorsupplies.com', 'Tom Wilson', '555-555-9012', 'tom@superiorsupplies.com'),
(4059, 'Great Products Inc.', '222 Elm St', 'Nowhere', 'WY', 'USA', '555-555-5678', 'info@greatproducts.com', 'Sarah Lee', '555-555-2345', 'sarah@greatproducts.com'),
(4060, 'ABC Supplies', '123 Main Street', 'Los Angeles', 'CA', 'USA', '555-1234', 'info@abcsupplies.com', 'John Doe', '555-5678', 'johndoe@abcsupplies.com');



/*5: Customer table:*/
DROP TABLE IF EXISTS Customer;
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    Country VARCHAR(255),
    Phone VARCHAR(20),
    Email VARCHAR(255)
);

INSERT INTO Customer (CustomerID, FirstName, LastName, Address, City, State, Country, Phone, Email)
VALUES
  (5001, 'John', 'Doe', '123 Main St', 'Anytown', 'CA', 'USA', '555-555-1212', 'johndoe@example.com'),
  (5002, 'Jane', 'Doe', '456 Oak Ave', 'Othertown', 'NY', 'USA', '555-555-2323', 'janedoe@example.com'),
  (5003, 'Bob', 'Smith', '789 Elm St', 'Another Town', 'TX', 'USA', '555-555-3434', 'bobsmith@example.com'),
  (5004, 'Samantha', 'Johnson', '1011 Cedar St', 'Smalltown', 'FL', 'USA', '555-555-4545', 'sjohnson@example.com'),
  (5005, 'David', 'Lee', '1213 Maple Ave', 'Bigcity', 'IL', 'USA', '555-555-5656', 'davidlee@example.com'),
  (5006, 'Emily', 'Taylor', '1415 Pine St', 'Middletown', 'OH', 'USA', '555-555-6767', 'emilytaylor@example.com'),
  (5007, 'Michael', 'Brown', '1617 Oak St', 'Hometown', 'NC', 'USA', '555-555-7878', 'michaelbrown@example.com'),
  (5008, 'Jessica', 'Garcia', '1819 Birch St', 'Everytown', 'WA', 'USA', '555-555-8989', 'jessicagarcia@example.com'),
  (5009, 'William', 'Anderson', '2021 Elmwood Ave', 'Downtown', 'MI', 'USA', '555-555-0101', 'williamanderson@example.com'),
  (5010, 'Stephanie', 'Thomas', '2223 Ash St', 'Uptown', 'PA', 'USA', '555-555-1212', 'stephaniethomas@example.com'),
  (5011, 'Andrew', 'Wilson', '2425 Cedar St', 'Midtown', 'GA', 'USA', '555-555-2323', 'andrewwilson@example.com'),
  (5012, 'Melissa', 'Lopez', '2627 Maple Ave', 'Outoftown', 'LA', 'USA', '555-555-3434', 'melissalopez@example.com'),
  (5013, 'James', 'Davis', '2829 Pine St', 'Faraway', 'IN', 'USA', '555-555-4545', 'jamesdavis@example.com'),
  (5014, 'Amanda', 'Rodriguez', '3031 Oak St', 'Upstate', 'OR', 'USA', '555-555-5656', 'amandarodriguez@example.com'),
  (5015, 'Christopher', 'Martinez', '3233 Birch St', 'Nowhere', 'ID', 'USA', '555-555-6767', 'christophermartinez@example.com'),
  (5016, 'Ashley', 'Hernandez', '3435 Elmwood Ave', 'Anyplace', 'KY', 'USA', '555-555-7878', 'ashleyhernandez@example.com'),
  (5017, 'Silpa', 'Chowdhary', '3637 Alabama Ave', 'Aplace', 'KY', 'USA', '555-555-7879', 'silpachowdhary@gmail.com'),
  (5018, 'Asish', 'Yadav', '3738 Arizona Ave', 'Faraday', 'CA', 'USA', '555-555-8081', 'asishyadav@gmail.com'),
  (5019, 'Sreenivasan', 'Gomadam', '3940 Arkansa Ave', 'Myplace', 'OH', 'USA', '555-555-8283', 'sreenivasang@gmail.com'),
  (5020, 'Hemanth', 'Kella', '4041 Oakland Ave', 'Thisplace', 'TX', 'USA', '555-555-8384', 'hemanthkella@gmail.com'),
  (5021, 'Nikhith', 'Raj', '4142 Alaska Ave', 'Thatplace', 'HI', 'USA', '555-555-8586', 'nikhithraj@rocketmail.com'),
  (5022, 'Gayathri', 'Sree', '4243 Colorado Ave', 'Downstate', 'FL', 'USA', '555-555-8788', 'gayathrisree@yahoo.com'),
  (5023, 'Pratik', 'Devharkar', '4445 California Ave', 'Thattown', 'TX', 'USA', '555-555-8990', 'pratikdev@gmail.com'),
  (5024, 'Swapna', 'Sase', '4647 Connecticut Ave', 'Thistown', 'AK', 'USA', '555-555-9091', 'swapnasase@rocektmail.com'),
  (5025, 'Harish', 'Jitta', '4748 Delaware Ave', 'Tomorrowland', 'PA', 'USA', '555-555-9293', 'harishj@yahoo.com'),
  (5026, 'Shivani', 'Rege', '4950 Florida Ave', 'Todayland', 'NJ', 'USA', '555-555-9394', 'shivanirege@gmail.com'),
  (5027, 'Klaus', 'Mikaelson', '5051 Georgia Ave', 'Yesterdayland', 'AZ', 'USA', '555-555-9596', 'kmikaelson@gmail.com'),
  (5028, 'Stefan', 'Salvatore', '5253 Hawaii Ave', 'Thatland', 'NC', 'USA', '555-555-9798', 'sstefan@rocketmail.com'),
  (5029, 'Elena', 'Gilbert', '5354 Idaho Ave', 'Thisland', 'MA', 'USA', '555-555-9900', 'elenagilbert@yahoo.com'),
  (5030, 'Hayley', 'Marshall', '5556 Iowa Ave', 'Myland', 'MN', 'USA', '555-556-0000', 'hayleym@gmail.com'),
  (5031, 'Barney', 'Stintson', '5758 Illinois Ave', 'Yourland', 'NY', 'USA', '555-556-0102', 'barneys@gmail.com'),
  (5032, 'Robin', 'Scherbatsky', '5960 Indiana Ave', 'Thierland', 'MI', 'USA', '555-556-0203', 'robins@yahoo.com'),
  (5033, 'Sophie', 'Walters', '6162 Kansas Ave', 'Ourland', 'AL', 'USA', '555-556-0405', 'spohiewalters@rocketmail.com'),
  (5034, 'Jack', 'Goldman', '6364 Kentucky Ave', 'Motherland', 'ID', 'USA', '555-556-0607', 'jgdman@gmail.com'),
  (5035, 'Chandler', 'Bing', '6566 Louisiana Ave', 'Thathouse', 'TN', 'USA', '555-556-0809', 'chandlerbing@gmail.com'),
  (5036, 'Rachel', 'Greene', '6768 Maine Ave', 'Mainland', 'CO', 'USA', '555-556-1011', 'rgreene@gmail.com'),
  (5037, 'Akshat', 'Tiwari', '6970 Maryland Ave', 'Maintown', 'CO', 'USA', '555-556-1112', 'aktiwari@rocketmail.com'),
  (5038, 'Sumita', 'Richharia', '7071 Massachusetts Ave', 'Mainplace', 'MT', 'USA', '555-556-1314', 'sumirichu@gmail.com'),
  (5039, 'Adithya', 'Kumar', '7273 Missouri Ave', 'Maincity', 'GA', 'USA', '555-556-1718', 'adikumar@yahoo.com'),
  (5040, 'Venkata', 'Santosh', '7475 Minnesota Ave', 'Subcity', 'SC', 'USA', '555-556-1920', 'venkatasantosh@gmail.com'),
  (5041, 'Dastan', 'Khan', '7576 Mississippi Ave', 'Subtown', 'CT', 'USA', '555-556-2022', 'dastank@rocketmail.com'),
  (5042, 'John', 'Wick', '7778 Montana Ave', 'Subland', 'UT', 'USA', '555-556-2223', 'jwick@gmail.com'),
  (5043, 'Tony', 'Stark', '800 Michigan Ave', 'Subterritory', 'IL', 'USA', '555-556-2425', 'tonystark@yahoo.com'),
  (5044, 'Thor', 'Odinson', '9 Hydrogen Ave', 'Subhouse', 'IL', 'USA', '555-556-2627', 'thorodinson@gmail.com'),
  (5045, 'Natasha', 'Romanoff', '56 Helium Ave', 'Subtown', 'MO', 'USA', '555-556-2829', 'natroman@yahoo.com'),
  (5046, 'Kara', 'Danvers', '194 Lithium Ave', 'Supertown', 'OR', 'USA', '555-556-3031', 'kdanvers@gmail.com'),
  (5047, 'Barry', 'Allen', '235 Berrylium Ave', 'Superland', 'WI', 'USA', '555-556-3233', 'baflash@gmail.com'),
  (5048, 'Iris', 'West', '377 Boron Ave', 'Superhouse', 'MD', 'USA', '555-556-3336', 'iriswestallen@rocketmail.com'),
  (5049, 'Oliver', 'Queen', '450 Carbon Ave', 'Superterritory', 'TX', 'USA', '555-556-3839', 'oliverq@yahoo.com'),
  (5050, 'Felicity', 'Smoak', '599 Notrogen Ave', 'Supercity', 'TX', 'USA', '555-556-5050', 'flicitys@yahoo.com');
  


/*6: Employee table:*/
DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255),
    Phone VARCHAR(20),
    Address VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    Country VARCHAR(255),
    HireDate DATE,
    Salary DECIMAL(10,2),
    Department VARCHAR(255)
);

-- after insert on employee
DELIMITER //
CREATE TRIGGER employee_after_insert 
after insert ON Employee 
FOR EACH ROW 
BEGIN 
INSERT INTO EmployeeAudit (EmployeeID, FirstName, LastName, Email, Phone, Address, City, State, Country, HireDate, Salary, Department,ModifiedAt) VALUES (NEW.EmployeeID, NEW.FirstName, NEW.LastName, NEW.Email, NEW.Phone, NEW.Address, NEW.City, NEW.State, NEW.Country, NEW.HireDate, NEW.Salary, NEW.Department,now());
END //
DELIMITER ;
-- use of trigger
select * from EmployeeAudit;

INSERT INTO Employee (EmployeeID, FirstName, LastName, Email, Phone, Address, City, State, Country, HireDate, Salary, Department)
VALUES 
(6001, 'John', 'Doe', 'johndoe@email.com', '555-1234', '123 Main St', 'Anytown', 'CA', 'USA', '2022-01-01', 50000.00, 'Marketing'),
(6002, 'Jane', 'Smith', 'janesmith@email.com', '555-5678', '456 Oak St', 'Sometown', 'NY', 'USA', '2022-02-01', 60000.00, 'Sales'),
(6003, 'Bob', 'Johnson', 'bjohnson@email.com', '555-9876', '789 Maple Ave', 'Othercity', 'TX', 'USA', '2022-03-01', 70000.00, 'Engineering'),
(6004, 'Sara', 'Lee', 'slee@email.com', '555-5555', '321 Elm St', 'Someplace', 'IL', 'USA', '2022-04-01', 80000.00, 'Finance'),
(6005, 'Tom', 'Williams', 'twilliams@email.com', '555-8888', '555 Pine St', 'Anytown', 'CA', 'USA', '2022-05-01', 90000.00, 'Marketing'),
(6006, 'Emily', 'Davis', 'edavis@email.com', '555-2222', '987 Maple Ave', 'Sometown', 'NY', 'USA', '2022-06-01', 100000.00, 'Sales'),
(6007, 'James', 'Brown', 'jbrown@email.com', '555-7777', '654 Oak St', 'Othercity', 'TX', 'USA', '2022-07-01', 110000.00, 'Engineering'),
(6008, 'Laura', 'Johnson', 'ljohnson@email.com', '555-4444', '246 Elm St', 'Someplace', 'IL', 'USA', '2022-08-01', 120000.00, 'Finance'),
(6009, 'Mike', 'Lee', 'mlee@email.com', '555-9999', '789 Pine St', 'Anytown', 'CA', 'USA', '2022-09-01', 130000.00, 'Marketing'),
(6010, 'Sarah', 'Wilson', 'swilson@email.com', '555-3333', '369 Maple Ave', 'Sometown', 'NY', 'USA', '2022-10-01', 140000.00, 'Sales'),
(6011, 'Robert', 'Miller', 'Robert@email.com', '555-6666', '753 Oak St', 'Othercity', 'TX', 'USA', '2022-11-01', 150000.00, 'Engineering'),
(6012, 'Jessica', 'Jones', 'Jessica@email.com', '555-1111', '987 Elm St', 'Someplace', 'IL', 'USA', '2022-12-01', 160000.00, 'Sales'),
(6013, 'David', 'Garcia', 'David@email.com', '555-5551', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-01', 10000.00, 'Sales'),
(6014, 'Elijah', 'Gonzalez', 'Elijah@email.com', '555-5552', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-01', 190000.00, 'Sales'),
(6015, 'David', 'Garcia', 'David@email.com', '555-5553', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-02-01', 180000.00, 'Sales'),
(6016, 'Natalie', 'Garcia', 'Natalie@email.com', '555-1555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-04-01', 160000.00, 'Sales'),
(6017, 'Logan', 'Garcia', 'Logan@email.com', '555-5552', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-09-01', 190000.00, 'Sales'),
(6018, 'Christopher', 'Garcia', 'Christopher@email.com', '155-5555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-07-01', 10000.00, 'Sales'),
(6019, 'Sofia', 'Garcia', 'Sofia@email.com', '555-5534', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-06-01', 170000.00, 'Sales'),
(6020, 'Mason', 'Garcia', 'Mason@email.com', '555-5550', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-07-01', 170000.00, 'Marketing'),
(6021, 'Victoria', 'Garcia', 'Victoria@email.com', '545-5555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-08-01', 170000.00, 'Marketing'),
(6022, 'David', 'King', 'David@email.com', '555-5556', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-05-01', 170900.00, 'Finance'),
(6023, 'Grace', 'Jackson', 'Grace@email.com', '555-5755', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-03-01', 170090.00, 'Finance'),
(6024, 'Joshua', 'Taylor', 'Joshua@email.com', '555-5559', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-09-01', 170008.00, 'Sales'),
(6025, 'Evelyn', 'Wilson', 'Evelyn@email.com', '555-5567', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-01', 170080.00, 'Sales'),
(6026, 'Harper', 'King', 'Harper@email.com', '555-5545', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-08-01', 170070.00, 'Sales'),
(6027, 'Matthew', 'Evans', 'Matthew@email.com', '555-5465', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-07-01', 170800.00, 'Marketing'),
(6028, 'Avery', 'Evans', 'Avery@email.com', '555-5556', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-05-01', 170700.00, 'Marketing'),
(6029, 'Natalie', 'Baker', 'Natalie@email.com', '554-5555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-04-01', 170800.00, 'Marketing'),
(6030, 'Elijah', 'Garcia', 'Elijah@email.com', '557-5555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-03-01', 170600.00, 'Marketing'),
(6031, 'Chloe', 'White', 'Chloe@email.com', '558-5555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-09-01', 170500.00, 'Marketing'),
(6032, 'William', 'Adams', 'William@email.com', '595-5555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-05-01', 170080.00, 'Marketing'),
(6033, 'Abigail', 'Carter', 'Abigail@email.com', '955-5555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-07', 170070.00, 'Marketing'),
(6034, 'Benjamin', 'Flores', 'Benjamin@email.com', '565-5555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-11', 170060.00, 'Marketing'),
(6035, 'Madison', 'Lee', 'Madison@email.com', '555-5445', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-23', 170060.00, 'Marketing'),
(6036, 'Alexander', 'Green', 'Alexander@email.com', '505-5555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-12', 170050.00, 'Marketing'),
(6037, 'Emily', 'Baker', 'Emily@email.com', '555-5995', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-23', 170400.00, 'Marketing'),
(6038, 'Daniel', 'Adams', 'Daniel@email.com', '555-5855', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-15', 171000.00, 'Marketing'),
(6039, 'Amelia', 'Patel', 'Amelia@email.com', '555-5755', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-30', 172000.00, 'Marketing'),
(6040, 'Michael', 'Liu', 'Michael@email.com', '555-8555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-22', 173000.00, 'Marketing'),
(6041, 'Charlotte', 'Martin', 'Charlotte@email.com', '555-9555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-20', 174000.00, 'Marketing'),
(6042, 'Ava', 'Gonzalez', 'Ava@email.com', '555-5585', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-21', 175000.00, 'Marketing'),
(6043, 'Jacob', 'Lopez', 'Jacob@email.com', '555-5455', '123 Pine St', 'Austin', 'CA', 'USA', '2023-01-16', 177000.00, 'Marketing'),
(6044, 'Mia', 'Robinson', 'Mia@email.com', '555-5455', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-17', 17800.00, 'Marketing'),
(6045, 'Mason', 'Smith', 'Mason@email.com', '555-5555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-18', 178000.00, 'Marketing'),
(6046, 'Isabella', 'White', 'Isabella@email.com', '444-5555', '123 Pine St', 'Austin', 'CA', 'USA', '2023-01-20', 179000.00, 'Marketing'),
(6047, 'Olivia', 'Carter', 'Olivia@email.com', '333-5555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-12', 176000.00, 'Marketing'),
(6048, 'William', 'Cook', 'William@email.com', '222-5555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-19', 170700.00, 'Marketing'),
(6049, 'Jennifer', 'Gonzalez', 'Jennifer@email.com', '888-5555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-13', 170800.00, 'Marketing'),
(6050, 'James', 'Garcia', 'James@email.com', '456-5555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-11', 170700.00, 'Marketing'),
(6051, 'Amanda', 'Adams', 'Amanda@email.com', '898-5555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-16', 176000.00, 'Marketing'),
(6052, 'Emily', 'Cooper', 'Emily@email.com', '511-5555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-16', 174000.00, 'Marketing'),
(6053, 'Madison', 'Garcia', 'Madison@email.com', '550-5555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-28', 17800.00, 'Marketing'),
(6054, 'Logan', 'Garcia', 'Logan@email.com', '590-5555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-19', 170400.00, 'Marketing'),
(6055, 'David', 'Evans', 'David@email.com', '567-5555', '123 Pine St', 'Anytown', 'CA', 'USA', '2023-01-14', 170500.00, 'Marketing');


/*7: Sales table:*/
DROP TABLE IF EXISTS Sales;
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    EmployeeID INT,
    ProductID INT,
    CustomerID INT,
    SaleDate DATE,
    Quantity INT,
    Price DECIMAL(10,2),
    Discount DECIMAL(5,2),
    Total DECIMAL(10,2),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

INSERT INTO Sales (saleid,employeeID, productid, customerid, saledate, quantity, price, discount, total)
VALUES
(7001,6001, 3001, 5001, '2022-01-01', 2, 150.00, 10.00, 290.00),
(7002,6002, 3002, 5002, '2022-01-01', 1, 200.00, 0.00, 200.00),
(7003,6003, 3003, 5003, '2022-01-02', 3, 75.00, 5.00, 215.00),
(7004,6004, 3004, 5004, '2022-01-02', 2, 300.00, 20.00, 560.00),
(7005,6005, 3005, 5005, '2022-01-03', 1, 250.00, 0.00, 250.00),
(7006,6006, 3006, 5006, '2022-01-03', 4, 100.00, 0.00, 400.00),
(7007,6007, 3007, 5007, '2022-01-04', 2, 175.00, 15.00, 320.00),
(7008,6008, 3008, 5008, '2022-01-04', 1, 500.00, 0.00, 500.00),
(7009,6009, 3009, 5009, '2022-01-05', 3, 125.00, 10.00, 345.00),
(7010, 6010,3010, 5010, '2022-01-05', 2, 350.00, 0.00, 700.00),
(7011, 6011,3011, 5011, '2022-01-06', 1, 450.00, 0.00, 450.00),
(7012, 6012,3012, 5012, '2022-01-06', 2, 100.00, 5.00, 190.00),
(7013, 6013,3001, 5013, '2022-01-07', 3, 50.00, 0.00, 150.00),
(7014, 6014,3002, 5014, '2022-01-07', 1, 800.00, 50.00, 750.00),
(7015, 6015,3002, 5015, '2022-01-08', 2, 400.00, 25.00, 775.00),
(7016, 6016,3003, 5002, '2022-01-08', 1, 650.00, 0.00, 650.00),
(7017, 6017,3003, 5002, '2022-01-09', 3, 150.00, 10.00, 430.00),
(7018, 6018,3003, 5003, '2022-01-09', 2, 250.00, 0.00, 500.00),
(7019, 6019,3004, 5003, '2022-01-10', 1, 900.00, 75.00, 825.00),
(7020, 6020,3004, 5004, '2022-01-10', 2, 600.00, 0.00, 1200.00),
(7021, 6021,3004, 5004, '2022-01-11', 3, 100.00, 10.00, 270.00),
(7022, 6022,3004, 5004, '2022-01-11', 1, 1500.00, 0.00, 1500.00),
(7023, 6023,3005, 5015, '2022-01-12', 2, 200.00, 5.00, 390.00),
(7024, 6024,3005, 5014, '2022-01-12', 1, 1000.00, 50.00, 950.00),
(7025, 6025,3005, 5014, '2022-01-13', 4, 300.00, 20.00, 1040.00),
(7026, 6026,3005, 5014, '2022-01-13', 1, 500.00, 0.00, 500.00),
(7027, 6027,3005, 5013, '2022-01-14', 2, 400.00, 10.00, 770.00),
(7028, 6028,3006, 5013, '2022-01-14', 1, 150.00, 0.00, 150.00),
(7029, 6029,3007, 5013, '2022-01-15', 3, 200.00, 15.00, 535.00),
(7030, 6030,3007, 5013, '2022-01-15', 2, 1000.00, 0.00, 2000.00),
(7031, 6031,3008, 5005, '2022-01-16', 1, 800.00, 0.00, 800.00),
(7032, 6032,3008, 5005, '2022-01-16', 2, 600.00, 25.00, 1150.00),
(7033, 6033,3008, 5005, '2022-01-17', 3, 250.00, 0.00, 750.00),
(7034, 6034,3008, 5005, '2022-01-17', 1, 1200.00, 75.00, 1125.00),
(7035, 6035,3008, 5006, '2022-01-18', 2, 150.00, 10.00, 290.00),
(7036, 6036,3008, 5012, '2022-01-18', 1, 300.00, 0.00, 300.00),
(7037, 6037,3009, 5012, '2022-01-19', 3, 1000.00, 20.00, 2940.00),
(7038, 6038,3009, 5011, '2022-01-19', 2, 500.00, 0.00, 1000.00),
(7039, 6039,3009, 5007, '2022-01-20', 1, 400.00, 50.00, 350.00),
(7040, 6040,3010, 5007, '2022-01-20', 2, 200.00, 0.00, 400.00),
(7041, 6041,3010, 5007, '2022-01-21', 3, 100.00, 10.00, 270.00),
(7042, 6042,3001, 5007, '2022-01-21', 1,150.00,20.00,280.00),
(7043, 6043,3002, 5010, '2022-02-01', 2, 400.00, 10.00, 770.00),
(7044, 6044,3006, 5010, '2022-02-01', 1, 150.00, 0.00, 150.00),
(7045, 6045,3007, 5010, '2022-02-02', 3, 200.00, 15.00, 535.00),
(7046, 6046,3003, 5009, '2022-02-02', 2, 1000.00, 0.00, 2000.00),
(7047, 6047,3003, 5008, '2022-02-03', 1, 800.00, 0.00, 800.00),
(7048, 6048,3003, 5009, '2022-02-03', 2, 600.00, 25.00, 1150.00),
(7049, 6049,3003, 5015, '2022-02-04', 3, 250.00, 0.00, 750.00),
(7050, 6050,3001, 5015, '2022-02-04', 1, 1200.00, 75.00, 1125.00);



/*8: Order table:*/
DROP TABLE IF EXISTS Ordertable;
CREATE TABLE Ordertable (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalPrice DECIMAL(10,2),
    Status VARCHAR(255),
    PaymentMethod VARCHAR(255),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

INSERT INTO Ordertable (OrderID, CustomerID, OrderDate, TotalPrice, Status, PaymentMethod)
VALUES
(8001, 5001, '2023-03-01', 100.00, 'Processing', 'Credit Card'),
(8002, 5002, '2023-03-02', 200.00, 'Shipped', 'PayPal'),
(8003, 5003, '2023-03-03', 300.00, 'Delivered', 'Cash'),
(8004, 5004, '2023-03-04', 400.00, 'Processing', 'Credit Card'),
(8005, 5005, '2023-03-05', 500.00, 'Shipped', 'PayPal'),
(8006, 5006, '2023-03-06', 600.00, 'Delivered', 'Cash'),
(8007, 5007, '2023-03-07', 700.00, 'Processing', 'Credit Card'),
(8008, 5008, '2023-03-08', 800.00, 'Shipped', 'PayPal'),
(8009, 5009, '2023-03-09', 900.00, 'Delivered', 'Cash'),
(8010, 5010, '2023-03-10', 1000.00, 'Processing', 'Credit Card'),
(8011, 5011, '2023-03-11', 1100.00, 'Shipped', 'PayPal'),
(8012, 5012, '2023-03-12', 1200.00, 'Delivered', 'Cash'),
(8013, 5013, '2023-03-13', 1300.00, 'Processing', 'Credit Card'),
(8014, 5014, '2023-03-14', 1400.00, 'Shipped', 'PayPal'),
(8015, 5015, '2023-03-15', 1500.00, 'Delivered', 'Cash'),
(8016, 5016, '2023-03-16', 1600.00, 'Processing', 'Credit Card'),
(8017, 5017, '2023-03-17', 1700.00, 'Shipped', 'PayPal'),
(8018, 5018, '2023-03-18', 1800.00, 'Delivered', 'Cash'),
(8019, 5019, '2023-03-19', 1900.00, 'Processing', 'Credit Card'),
(8020, 5020, '2023-03-20', 2000.00, 'Shipped', 'PayPal'),
(8021, 5021, '2023-03-21', 2100.00, 'Delivered', 'Cash'),
(8022, 5022, '2023-03-22', 2200.00, 'Processing', 'Credit Card'),
(8023, 5023, '2023-03-23', 2300.00, 'Shipped', 'PayPal'),
(8024, 5024, '2023-03-24', 2400.00, 'Delivered', 'Cash'),
(8025, 5025, '2023-03-25', 2500.00,'Delivered','Cash'),
(8026, 5026, '2023-03-01', 100.00, 'Processing', 'Credit Card'),
(8027, 5027, '2023-03-02', 200.00, 'Shipped', 'PayPal'),
(8028, 5028, '2023-03-03', 300.00, 'Delivered', 'Cash'),
(8029, 5029, '2023-03-04', 400.00, 'Processing', 'Credit Card'),
(8030, 5030, '2023-03-05', 500.00, 'Shipped', 'PayPal'),
(8031, 5031, '2023-03-06', 600.00, 'Delivered', 'Cash'),
(8032, 5032, '2023-03-07', 700.00, 'Processing', 'Credit Card'),
(8033, 5033, '2023-03-08', 800.00, 'Shipped', 'PayPal'),
(8034, 5034, '2023-03-09', 900.00, 'Delivered', 'Cash'),
(8035, 5035, '2023-03-10', 1000.00, 'Processing', 'Credit Card'),
(8036, 5036, '2023-03-11', 1100.00, 'Shipped', 'PayPal'),
(8037, 5037, '2023-03-12', 1200.00, 'Delivered', 'Cash'),
(8038, 5038, '2023-03-13', 1300.00, 'Processing', 'Credit Card'),
(8039,5039, '2023-03-14', 1400.00, 'Shipped', 'PayPal'),
(8040, 5040, '2023-03-15', 1500.00, 'Delivered', 'Cash'),
(8041, 5041, '2023-03-16', 1600.00, 'Processing', 'Credit Card'),
(8042, 5042, '2023-03-17', 1700.00, 'Shipped', 'PayPal'),
(8043, 5043, '2023-03-18', 1800.00, 'Delivered', 'Cash'),
(8044, 5044, '2023-03-19', 1900.00, 'Processing', 'Credit Card'),
(8045, 5045, '2023-03-20', 2000.00, 'Shipped', 'PayPal'),
(8046, 5046, '2023-03-21', 2100.00, 'Delivered', 'Cash'),
(8047, 5047, '2023-03-22', 2200.00, 'Processing', 'Credit Card'),
(8048, 5048, '2023-03-23', 2300.00, 'Shipped', 'PayPal'),
(8049, 5049, '2023-03-24', 2400.00, 'Delivered', 'Cash'),
(8050, 5050, '2023-03-25', 2500.00,'Delivered','Cash');


/*9: OrderStatus table:*/
DROP TABLE IF EXISTS OrderStatus;
CREATE TABLE OrderStatus (
    OrderStatusID INT PRIMARY KEY,
    OrderID INT,
    Status VARCHAR(255),
    StatusDate DATE,
    FOREIGN KEY (OrderID) REFERENCES Ordertable(OrderID)
);

INSERT INTO OrderStatus (OrderStatusID, OrderID, Status, StatusDate)
VALUES
(101, 8001, 'Pending', '2023-04-01'),
(102, 8002, 'Shipped', '2023-04-01'),
(103, 8003, 'Delivered', '2023-03-30'),
(104, 8004, 'Pending', '2023-03-29'),
(105, 8005, 'Shipped', '2023-03-28'),
(106, 8006, 'Delivered', '2023-03-27'),
(107, 8007, 'Pending', '2023-03-26'),
(108, 8008, 'Shipped', '2023-03-25'),
(019, 8009, 'Delivered', '2023-03-24'),
(110, 8010, 'Pending', '2023-03-23'),
(111, 8011, 'Shipped', '2023-03-22'),
(112, 8012, 'Delivered', '2023-03-21'),
(113, 8013, 'Pending', '2023-03-20'),
(114, 8014, 'Shipped', '2023-03-19'),
(115, 8015, 'Delivered', '2023-03-18'),
(116, 8016, 'Pending', '2023-03-17'),
(117, 8017, 'Shipped', '2023-03-16'),
(118, 8018, 'Delivered', '2023-03-15'),
(119, 8019, 'Pending', '2023-03-14'),
(120, 8020, 'Shipped', '2023-03-13'),
(121, 8021, 'Delivered', '2023-03-12'),
(122, 8022, 'Pending', '2023-03-11'),
(123, 8023, 'Shipped', '2023-03-10'),
(124, 8024, 'Delivered', '2023-03-09'),
(125, 8025, 'Pending', '2023-03-08'),
(126, 8026, 'Shipped', '2023-03-07'),
(127, 8027, 'Delivered', '2023-03-06'),
(128, 8028, 'Pending', '2023-03-05'),
(129, 8029, 'Shipped', '2023-03-04'),
(130, 8030, 'Delivered', '2023-03-03'),
(131, 8031, 'Pending', '2023-03-02'),
(132, 8032, 'Shipped', '2023-03-01'),
(133, 8033, 'Delivered', '2023-02-28'),
(134, 8034, 'Pending', '2023-02-27'),
(135, 8035, 'Shipped', '2023-02-26'),
(136, 8036, 'Delivered', '2023-02-25'),
(137, 8037, 'Pending', '2023-02-26'),
(138, 8038, 'Shipped', '2023-02-27'),
(139, 8039, 'Pending', '2023-02-28'),
(140, 8040, 'Pending', '2023-03-10'),
(141, 8041, 'Shipped', '2023-03-11'),
(142, 8042, 'Shipped', '2023-03-12'),
(143, 8043, 'Pending', '2023-03-13'),
(144, 8044, 'Delivered', '2023-03-14'),
(145, 8045, 'Pending', '2023-03-15'),
(146, 8046, 'Delivered', '2023-03-16'),
(147, 8047, 'Pending', '2023-03-17'),
(148, 8048, 'Shipped', '2023-03-18'),
(149, 8049, 'Delivered', '2023-03-19'),
(150, 8050, 'Shipped', '2023-03-20');



/*10: Stock table:*/
DROP TABLE IF EXISTS Stock;
CREATE TABLE Stock (
    StockID INT PRIMARY KEY,
    ProductID INT,
    SupplierID INT,
    ManufacturerID INT,
    Quantity INT,
    CostPrice DECIMAL(10,2),
    RetailPrice DECIMAL(10,2),
    DateAdded DATE,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID),
    FOREIGN KEY (ManufacturerID) REFERENCES Manufacturer(ManufacturerID)
);

INSERT INTO Stock (stockid, productid, supplierid, manufacturerid, quantity, costprice,
retailprice, DateAdded)
VALUES
(9001, 3001, 4001, 2001, 10, 75.00, 120.00, '2023-03-28'),
(9002, 3002, 4002, 2001, 20, 150.00, 250.00, '2023-03-28'),
(9003, 3003, 4003, 2002, 15, 200.00, 300.00, '2023-03-28'),
(9004, 3004, 4004, 2003, 5, 100.00, 175.00, '2023-03-28'),
(9005, 3005, 4005, 2004, 8, 120.00, 200.00, '2023-03-28'),
(9006, 3006, 4001, 2001, 12, 90.00, 140.00, '2023-03-27'),
(9007, 3007, 4022, 2001, 18, 180.00, 300.00, '2023-03-27'),
(9008, 3008, 4003, 2001, 14, 225.00, 350.00, '2023-03-27'),
(9009, 3009, 4005, 2001, 6, 120.00, 200.00, '2023-03-27'),
(9010, 3010, 4005, 2004, 10, 150.00, 250.00, '2023-03-27'),
(9011, 3011, 4001, 2001, 8, 60.00, 100.00, '2023-03-26'),
(9012, 3012, 4001, 2001, 16, 120.00, 200.00, '2023-03-26'),
(9013, 3013, 4001, 2002, 20, 250.00, 400.00, '2023-03-26'),
(9014, 3014, 4001, 2003, 4, 80.00, 140.00, '2023-03-26'),
(9015, 3015, 4001, 2004, 6, 90.00, 150.00, '2023-03-26'),
(9016, 3016, 4006, 2005, 14, 105.00, 170.00, '2023-03-25'),
(9017, 3017, 4007, 2006, 22, 220.00, 360.00, '2023-03-25'),
(9018, 3018, 4006, 2006, 12, 150.00, 250.00, '2023-03-25'),
(9019, 3019, 4004, 2005, 8, 160.00, 275.00, '2023-03-25'),
(9020, 3020, 4005, 2007, 10, 200.00, 325.00, '2023-03-25'),
(9021, 3021, 4001, 2007, 16, 120.00, 200.00, '2023-03-25'),
(9022, 3022, 4002, 2007, 24, 240.00, 400.00, '2023-03-24'),
(9023, 3023, 4003, 2008, 18, 270.00, 450.00, '2023-03-24'),
(9024, 3024, 4006, 2007, 10, 200.00, 350.00, '2023-03-24'),
(9025, 3025, 4006, 2004, 12, 180.00, 300.00, '2023-03-24'),
(9026, 3026, 4001, 2009, 10, 75.00, 120.00, '2023-03-23'),
(9027, 3027, 4007, 2009, 20, 150.00, 250.00, '2023-03-23'),
(9028, 3028, 4008, 2009, 15, 200.00, 300.00, '2023-03-23'),
(9029, 3029, 4008, 2006, 5, 100.00, 175.00, '2023-03-23'),
(9030, 3030, 4009, 2010, 8, 120.00, 200.00, '2023-03-23'),
(9031, 3031, 4009, 2011, 12, 90.00, 140.00, '2023-03-22'),
(9032, 3032, 4009, 2012, 18, 180.00, 300.00, '2023-03-22'),
(9033, 3033, 4010, 2012, 14, 225.00, 350.00, '2023-03-22'),
(9034, 3034, 4010, 2003, 6, 120.00, 200.00, '2023-03-22'),
(9035, 3035, 4011, 2004, 10, 150.00, 250.00, '2023-03-22'),
(9036, 3036, 4012, 2001, 8, 60.00, 100.00, '2023-03-21'),
(9037, 3037, 4012, 2013, 16, 120.00, 200.00, '2023-03-21'),
(9038, 3038, 4012, 2014, 20, 250.00, 400.00, '2023-03-21'),
(9039, 3039, 4013, 2014, 4, 80.00, 140.00, '2023-03-21'),
(9040, 3040, 4013, 2014, 6, 90.00, 150.00, '2023-03-21'),
(9041, 3041, 4013, 2014, 14, 105.00, 170.00, '2023-03-20'),
(9042, 3042, 4014, 2006, 22, 220.00, 360.00, '2023-03-21'),
(9043, 3043, 4014, 2007, 10, 200.00, 350.00, '2023-03-18'),
(9044, 3044, 4015, 2008, 8, 120.00, 200.00, '2023-03-18'),
(9045, 3045, 4008, 2001, 12, 180.00, 300.00, '2023-03-18'),
(9046, 3046, 4009, 2015, 6, 150.00, 250.00, '2023-03-18'),
(9047, 3047, 4010, 2015, 4, 80.00, 140.00, '2023-03-18'),
(9048, 3048, 4010, 2015, 18, 360.00, 600.00, '2023-03-17'),
(9049, 3049, 4001, 2001, 24, 180.00, 300.00, '2023-03-17'),
(9050, 3050, 4002, 2002, 16, 240.00, 400.00, '2023-03-17');



/*11: Warranty table:*/
DROP TABLE IF EXISTS Warranty;
CREATE TABLE Warranty (
    WarrantyID INT PRIMARY KEY,
    ProductID INT,
    WarrantyType VARCHAR(255),
    WarrantyDuration INT,
    WarrantyStartDate DATE,
    WarrantyEndDate DATE,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

INSERT INTO Warranty (WarrantyID, ProductID, WarrantyType, WarrantyDuration, WarrantyStartDate, WarrantyEndDate)
VALUES
  (201, 3001, 'Manufacturer', 12, '2022-01-01', '2023-01-01'),
  (202, 3002, 'Extended', 24, '2022-02-15', '2024-02-15'),
  (203, 3003, 'Limited', 6, '2022-03-20', '2022-09-20'),
  (204, 3004, 'Manufacturer', 24, '2022-04-01', '2024-04-01'),
  (205, 3005, 'Limited', 12, '2022-05-10', '2023-05-10'),
  (206, 3006, 'Extended', 36, '2022-06-15', '2025-06-15'),
  (207, 3007, 'Manufacturer', 12, '2022-07-01', '2023-07-01'),
  (208, 3008, 'Limited', 6, '2022-08-01', '2022-12-31'),
  (209, 3009, 'Extended', 24, '2022-09-01', '2024-09-01'),
  (210, 3010, 'Limited', 12, '2022-10-01', '2023-10-01'),
  (211, 3011, 'Manufacturer', 12, '2022-11-01', '2023-11-01'),
  (212, 3012, 'Extended', 24, '2022-12-15', '2024-12-15'),
  (213, 3013, 'Limited', 6, '2023-01-20', '2023-07-20'),
  (214, 3014, 'Manufacturer', 24, '2023-02-01', '2025-02-01'),
  (215, 3015, 'Limited', 12, '2023-03-10', '2024-03-10'),
  (216, 3016, 'Extended', 36, '2023-04-15', '2026-04-15'),
  (217, 3017, 'Manufacturer', 12, '2023-05-01', '2024-05-01'),
  (218, 3003, 'Limited', 6, '2023-06-01', '2023-11-30'),
  (219, 3004, 'Extended', 24, '2023-07-01', '2025-07-01'),
  (220, 3005, 'Limited', 12, '2023-08-01', '2024-08-01'),
  (221, 3006, 'Manufacturer', 12, '2023-09-01', '2024-09-01'),
  (222, 3007, 'Extended', 24, '2023-10-15', '2025-10-15'),
  (223, 3004, 'Extended', 24, '2023-10-25', '2025-10-25'),
  (224, 3005, 'Extended', 24, '2023-11-23', '2025-11-23'),
  (225, 3006, 'Extended', 24, '2021-10-15', '2023-10-15'),
  (226, 3008, 'Extended', 24, '2021-09-15', '2023-09-15'),
  (227, 3008, 'Extended', 24, '2021-08-15', '2023-08-15'),
  (228, 3009, 'Limited', 6, '2023-11-20', '2024-05-20'),
  (229, 3010, 'Limited', 6, '2021-10-20', '2022-10-20'),
  (230, 3005, 'Limited', 6, '2021-09-20', '2022-09-20'),
  (231, 3001, 'Limited', 6, '2021-08-20', '2022-08-20'),
  (232, 3003, 'Limited', 6, '2021-07-20', '2022-07-20'),
  (233, 3005, 'Limited', 6, '2021-06-20', '2022-06-20'),
  (234, 3013, 'Limited', 6, '2021-05-20', '2022-05-20'),
  (235, 3012, 'Limited', 6, '2021-05-21', '2022-05-21'),
  (236, 3012, 'Limited', 6, '2021-05-22', '2022-05-22'),
  (237, 3005, 'Limited', 6, '2021-05-23', '2022-05-23'),
  (238, 3007, 'Limited', 6, '2021-05-24', '2022-05-24'),
  (239, 3003, 'Manufacturer', 24, '2023-12-01', '2025-12-12'),
  (240, 3001, 'Manufacturer', 24, '2022-12-01', '2024-12-12'),
  (241, 3009, 'Manufacturer', 24, '2022-11-01', '2024-12-12'),
  (242, 3004, 'Manufacturer', 24, '2022-10-01', '2024-12-12'),
  (243, 3006, 'Manufacturer', 24, '2022-09-01', '2024-12-12'),
  (244, 3008, 'Manufacturer', 24, '2022-08-01', '2024-12-12'),
  (245, 3017, 'Manufacturer', 24, '2022-07-01', '2024-12-12'),
  (246, 3015, 'Manufacturer', 24, '2022-07-02', '2024-12-12'),
  (247, 3016, 'Manufacturer', 24, '2022-07-03', '2024-12-12'),
  (248, 3008, 'Manufacturer', 24, '2022-07-04', '2024-12-12'),
  (249, 3016, 'Manufacturer', 24, '2022-07-05', '2024-12-12'),
  (250, 3015, 'Manufacturer', 24, '2022-07-06', '2024-12-12');

/*12: ServiceCenter table:*/
DROP TABLE IF EXISTS ServiceCenter;
CREATE TABLE ServiceCenter (
    ServiceCenterID INT  PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    Country VARCHAR(255),
    Phone VARCHAR(20),
    Email VARCHAR(255)
);

INSERT INTO ServiceCenter (ServiceCenterID, Name, Address, City, State, Country, Phone, Email)
VALUES
(1101, 'ABC Service Center', '1234 Main St', 'New York', 'NY', 'USA', '(103) 456-7890', 'abc2@servicecenter.com'),
(1102, 'XYZ Service Center', '4567 Elm St', 'Los Angeles', 'CA', 'USA', '(907) 654-3210', 'xyz5@servicecenter.com'),
(1103, 'Service Center of Chicago', '7889 Oak St', 'Chicago', 'IL', 'USA', '(505) 123-4567', 'chicago3@servicecenter.com'),
(1104, 'Service Center of Houston', '1810 Pine St', 'Houston', 'TX', 'USA', '(703) 555-1212', 'houston4@servicecenter.com'),
(1105, 'Service Center of Miami', '2345 Palm Ave', 'Miami', 'FL', 'USA', '(395) 555-5555', 'miami5@servicecenter.com'),
(1106, 'Service Center of San Francisco', '5678 Maple St', 'San Francisco', 'CA', 'USA', '(405) 555-1212', 'sanfrancisco6@servicecenter.com'),
(1107, 'Service Center of Boston', '8909 Walnut St', 'Boston', 'MA', 'USA', '(607) 555-1212', 'boston7@servicecenter.com'),
(1108, 'Service Center of Seattle', '1110 Pine St', 'Seattle', 'WA', 'USA', '(296) 555-1212', 'seattle8@servicecenter.com'),
(1109, 'Service Center of Atlanta', '2220 Peachtree St', 'Atlanta', 'GA', 'USA', '(484) 555-1212', 'atlanta9@servicecenter.com'),
(1110, 'Service Center of Dallas', '3330 Main St', 'Dallas', 'TX', 'USA', '(204) 555-1212', 'dallas11@servicecenter.com'),
(1111, 'Service Center of Philadelphia', '4440 Market St', 'Philadelphia', 'PA', 'USA', '(205) 555-1212', 'philadelphia12@servicecenter.com'),
(1112, 'Service Center of Las Vegas', '5550 Fremont St', 'Las Vegas', 'NV', 'USA', '(792) 555-1212', 'lasvegas13@servicecenter.com'),
(1113, 'Service Center of Phoenix', '6660 Camelback Rd', 'Phoenix', 'NY', 'USA', '(682) 555-1212', 'phoenix14@servicecenter.com'),
(1114, 'Service Center of Denver', '7770 Broadway', 'Denver', 'CO', 'USA', '(383) 555-1212', 'denver15@servicecenter.com'),
(1115, 'Service Center of Nashville', '8880 Church St', 'Nashville', 'TN', 'USA', '(675) 555-1212', 'nashville16@servicecenter.com'),
(1116, 'Service Center of New Orleans', '9990 Canal St', 'New Orleans', 'LA', 'USA', '(564) 555-1212', 'neworleans17@servicecenter.com'),
(1117, 'Service Center of San Diego', '1282 Broadway', 'San Diego', 'CA', 'USA', '(609) 555-1212', 'sandiego18@servicecenter.com'),
(1118, 'Service Center of Washington DC', '1494 K St NW', 'Washington', 'DC', 'USA', '(505) 876-0987',  'washington19@servicecenter.com'),
(1119, 'ABC Repair Center', '123 Main St', 'Anytown', 'NY', 'USA', '(123) 456-7890', 'abc@repaircenter.com'),
(1120, 'XYZ Service Center', '456 Oak Ave', 'Smallville', 'NY', 'USA', '(555) 555-1212', 'xyzservice@servicecenter.com'),
(1121, '123 Fix-It', '789 Maple St', 'Big City', 'TX', 'USA', '(555) 555-1234', 'info@123fixit.com'),
(1122, 'The Repair Shop', '10 Elm St', 'Somewhere', 'FL', 'USA', '(555) 555-5555', 'therepairshop@example.com'),
(1123, 'Fast Repair', '555 Fifth Ave', 'Metropolis', 'IL', 'USA', '(555) 123-4567', 'info@fastrepair.com'),
(1124, 'The Fixers', '678 Ninth St', 'Smalltown', 'MN', 'USA', '(555) 555-1111', 'thefixers@repaircenter.com'),
(1125, 'A-1 Repairs', '111 Main St', 'Midtown', 'GA', 'USA', '(404) 555-1234', 'a1repairs@example.com'),
(1126, 'Fix-It-Now', '222 Second St', 'Downtown', 'NY', 'USA', '(555) 123-4567', 'fixitnow@servicecenter.com'),
(1127, 'Repair Depot', '333 Third St', 'Uptown', 'WA', 'USA', '(555) 555-1234', 'info@repairdepot.com'),
(1128, 'Hometown Repairs', '444 Fourth St', 'Hometown', 'CA', 'USA', '(555) 555-5555', 'hometownrepairs@example.com'),
(1129, 'QuickFix', '555 Fifth St', 'Cityville', 'NJ', 'USA', '(555) 123-4567', 'quickfix@repaircenter.com'),
(1130, 'Rapid Repair', '666 Sixth St', 'Sometown', 'TX', 'USA', '(555) 555-5555', 'info@rapidrepair.com'),
(1131, 'On-The-Spot Repair', '777 Seventh St', 'Townton', 'MA', 'USA', '(555) 123-4567', 'info@onthespotrepair.com'),
(1132, 'FixItUp', '888 Eighth St', 'Villageville', 'FL', 'USA', '(555) 555-1234', 'fixitup@example.com'),
(1133, 'The Fix-It Shoppe', '999 Ninth St', 'Townsville', 'NY', 'USA', '(555) 123-4567', 'info@fixitshoppe.com'),
(1134, 'ProFix', '1111 Tenth St', 'City Heights', 'CA', 'USA', '(555) 555-5555', 'profix@repaircenter.com'),
(1135, 'Expert Repairs', '2222 Eleventh St', 'Cityview', 'TX', 'USA', '(555) 123-4567', 'info@expertrepairs.com'),
(1136, 'ABC Service Center', '1234 Main St', 'New York', 'NY', 'USA', '(103) 456-7890', 'abc2@servicecenter.com'),
(1137, 'XYZ angles Service Center', '4544 Elm St', 'Los Angeles', 'CA', 'USA', '(907) 654-3299', 'xyzangels@servicecenter.com'),
(1138, 'Service Center of Chicago oak', '7009 Oak St', 'Chicago', 'IL', 'USA', '(505) 123-4500', 'chicagooak@servicecenter.com'),
(1139, 'Service Center of Houston pine', '1819 Pine St', 'Houston', 'TX', 'USA', '(703) 555-1299', 'houstonpine@servicecenter.com'),
(1140, 'Service Center of Miami palm', '2349 Palm Ave', 'Miami', 'FL', 'USA', '(395) 555-5595', 'miamipalm@servicecenter.com'),
(1141, 'Service Center of San Francisco maple', '5675 Maple St', 'San Francisco', 'CA', 'USA', '(405) 555-1239', 'sanfranciscomaple@servicecenter.com'),
(1142, 'Service Center of Boston walnut', '8902 Walnut St', 'Boston', 'MA', 'USA', '(607) 555-1294', 'bostonwalnut@servicecenter.com'),
(1143, 'Service Center of Seattle pine', '1113 Pine St', 'Seattle', 'WA', 'USA', '(296) 555-1293', 'seattlepine@servicecenter.com'),
(1144, 'Service Center of Atlanta peachtree', '2229 Peachtree St', 'Atlanta', 'GA', 'USA', '(484) 555-1276', 'atlantapeachtree@servicecenter.com'),
(1145, 'Service Center of Dallas coit', '3338 Main St', 'Dallas', 'TX', 'USA', '(204) 555-1289', 'dallascoit@servicecenter.com'),
(1146, 'Service Center of Philadelphia market', '4443 Market St', 'Philadelphia', 'PA', 'USA', '(205) 555-1234', 'philadelphiamarket@servicecenter.com'),
(1147, 'Service Center of Las Vegas fermont', '5558 Fremont St', 'Las Vegas', 'NV', 'USA', '(792) 555-1256', 'lasvegasfermont@servicecenter.com'),
(1148, 'Service Center of Phoenix camelback', '6666 Camelback Rd', 'Phoenix', 'AZ', 'USA', '(682) 555-1267', 'phoenixcamelback@servicecenter.com'),
(1149, 'Service Center of Denver broadway', '7773 Broadway', 'Denver', 'CO', 'USA', '(383) 555-1219', 'denverbroadway@servicecenter.com'),
(1150, 'Service Center of Nashville church', '8881 Church St', 'Nashville', 'TN', 'USA', '(675) 550-1212', 'nashvillechurch@servicecenter.com');



/*13:ServiceRequest table:*/
DROP TABLE IF EXISTS ServiceRequest; 
CREATE TABLE ServiceRequest (
    ServiceRequestID INT PRIMARY KEY,
    RequestDate DATE,
    CustomerID INT,
    ProductID INT,
    Description TEXT,
    StatusID INT,
    ServiceCenterID INT,
     FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    CONSTRAINT fk_customer FOREIGN KEY (CustomerID)
        REFERENCES Customer(CustomerID),
    CONSTRAINT fk_product FOREIGN KEY (ProductID)
        REFERENCES Product(ProductID),
    /*CONSTRAINT fk_requeststatus FOREIGN KEY (StatusID)
        REFERENCES RequestStatus(StatusID),*/
    CONSTRAINT fk_servicecenter FOREIGN KEY (ServiceCenterID)
        REFERENCES ServiceCenter(ServiceCenterID)
);

INSERT INTO ServiceRequest (ServiceRequestID, RequestDate, CustomerID, ProductID, Description, StatusID, ServiceCenterID) VALUES
(2201, '2022-01-01', 5001, 3001, 'The refrigerator is not cooling properly', 1, 1101),
(2202, '2022-01-02', 5002, 3002, 'The oven is not heating up', 1, 1102),
(2203, '2022-01-03', 5003, 3003, 'The dishwasher is making strange noises', 1, 1103),
(2204, '2022-01-04', 5004, 3004, 'The washing machine is leaking water', 1, 1104),
(2205, '2022-01-05', 5005, 3005, 'The dryer is not drying clothes', 1, 1105),
(2206, '2022-01-06', 5006, 3006, 'The air conditioner is not cooling the room', 1, 1106),
(2207, '2022-01-07', 5007, 3007, 'The microwave is not heating food', 1, 1107),
(2208, '2022-01-08', 5008, 3008, 'The vacuum cleaner is not picking up dirt', 1, 1108),
(2209, '2022-01-09', 5009, 3009, 'The blender is not blending properly', 1, 1109),
(2210, '2022-01-10', 5010, 3010, 'The coffee maker is not brewing coffee', 1, 1110),
(2211, '2022-01-11', 5011, 3011, 'The refrigerator is making strange noises', 1, 1111),
(2212, '2022-01-12', 5012, '3012', 'The oven is not turning on', 1, 1112),
(2213, '2022-01-13', 5013, 3013, 'The dishwasher is not cleaning dishes properly', 1, 1113),
(2214, '2022-01-14', 5014, 3014, 'The washing machine is not spinning', 1, 1114),
(2215, '2022-01-15', 5015, 3015, 'The dryer is making loud noises', 1, 1115),
(2216, '2022-01-16', 5016, 3006, 'The air conditioner is not turning on', 1, 1116),
(2217, '2022-01-17', 5017, 3007, 'The microwave is sparking', 1, 1117),
(2218, '2022-01-18', 5018, 3008, 'The vacuum cleaner is making strange noises', 1, 1118),
(2219, '2022-01-19', 5019, 3009, 'The blender is leaking', 1, 1119),
(2220, '2022-01-01', 5020, 3001, 'The refrigerator is not cooling properly', 1, 1101),
(2221, '2022-01-02', 5021, 3002, 'The oven is not heating up', 1, 1102),
(2222, '2022-01-03', 5022, 3003, 'The dishwasher is making strange noises', 1, 1103),
(2223, '2022-01-04', 5023, 3004, 'The washing machine is leaking water', 1, 1104),
(2224, '2022-01-05', 5024, 3005, 'The dryer is not drying clothes', 1, 1105),
(2225, '2022-01-06', 5025, 3006, 'The air conditioner is not cooling the room', 1, 1106),
(2226, '2022-01-07', 5026, 3007, 'The microwave is not heating food', 1, 1107),
(2227, '2022-01-08', 5027, 3008, 'The vacuum cleaner is not picking up dirt', 1, 1108),
(2228, '2022-01-09', 5028, 3009, 'The blender is not blending properly', 1, 1108),
(2229, '2022-01-10', 5029, 3010, 'The coffee maker is not brewing coffee', 1, 1110),
(2230, '2022-01-11', 5030, 3011, 'The refrigerator is making strange noises', 1, 1111),
(2231, '2022-01-12', 5031, 3012, 'The oven is not turning on', 1, 1112),
(2232, '2022-01-13', 5032, 3013, 'The dishwasher is not cleaning dishes properly', 1, 1113),
(2233, '2022-01-14', 5033, 3014, 'The washing machine is not spinning', 1, 1114),
(2234, '2022-01-15', 5034, 3015, 'The dryer is making loud noises', 1, 1115),
(2235, '2022-01-16', 5035, 3016, 'The air conditioner is not turning on', 1, 1116),
(2236, '2022-01-17', 5036, 3017, 'The microwave is sparking', 1, 1117),
(2237, '2022-01-18', 5037, 3008, 'The vacuum cleaner is making strange noises', 1, 1118),
(2238, '2022-01-19', 5038, 3008, 'The blender is leaking', 1, 1119),
(2239, '2022-02-27', 5039, 3010, 'The vacuum cleaner is not sucking properly', 1, 1120),
(2240, '2022-02-28', 5040, 3011, 'The microwave door is broken', 1, 1117),
(2241, '2022-03-01', 5041, 3012, 'The air conditioner is making strange noises', 1, 1116),
(2242, '2022-01-12', 5042, 3013, 'The oven is not turning on', 1, 1112),
(2243, '2022-01-13', 5043, 3003, 'The dishwasher is not cleaning dishes properly', 1, 1113),
(2244, '2022-01-14', 5044, 3004, 'The washing machine is not spinning', 1, 1114),
(2245, '2022-01-15', 5045, 3005, 'The dryer is making loud noises', 1, 1115),
(2246, '2022-01-16', 5046, 3006, 'The air conditioner is not turning on', 1, 1116),
(2247, '2022-01-17', 5047, 3007, 'The microwave is sparking', 1, 1117),
(2248, '2022-01-18', 5048, 3008, 'The vacuum cleaner is making strange noises', 1, 1118),
(2249, '2022-01-19', 5049, 3009, 'The blender is leaking', 1, 1119),
(2250, '2022-02-27', 5050, 3009, 'The vacuum cleaner is not sucking properly', 1, 1119);



/*14:Repair table:*/
DROP TABLE IF EXISTS Repair; 
CREATE TABLE Repair (
    RepairID INT PRIMARY KEY,
    ProductID INT,
    ServiceRequestID INT,
    RepairDate DATE,
    RepairDescription VARCHAR(255),
    RepairCost DECIMAL(10,2),
    RepairStatus VARCHAR(20),
    ServiceCenterID INT,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (ServiceRequestID) REFERENCES ServiceRequest(ServiceRequestID),
    FOREIGN KEY (ServiceCenterID) REFERENCES ServiceCenter(ServiceCenterID)
);

INSERT INTO Repair (RepairID, ProductID, ServiceRequestID, RepairDate, RepairDescription, RepairCost, RepairStatus, ServiceCenterID)
VALUES
(301, 3001, 2201, '2022-01-01', 'Replace broken screen', 150.00, 'Completed', 1101),
(302, 3002, 2202, '2022-02-03', 'Replace damaged battery', 80.00, 'Completed', 1102),
(303, 3003, 2203, '2022-02-15', 'Repair faulty power button', 50.00, 'In progress', 1103),
(305, 3005, 2204, '2022-04-05', 'Repair water damage', 120.00, 'In progress', 1104),
(306, 3006, 2205, '2022-04-20', 'Replace cracked camera lens', 60.00, 'Completed', 1105),
(307, 3007, 2207, '2022-05-10', 'Repair software issue', 30.00, 'Completed', 1106),
(304, 3004, 2204, '2022-03-01', 'Replace broken speaker', 70.00, 'Completed', 1107),
(308, 3008, 2208, '2022-06-01', 'Replace damaged charging port', 90.00, 'In progress', 1108),
(309, 3009, 2209, '2022-06-15', 'Repair broken headphone jack', 40.00, 'Completed', 1109),
(310, 3010, 2210, '2022-07-02', 'Replace damaged display', 120.00, 'In progress', 1110),
(311, 3011, 2211, '2022-07-15', 'Repair software issue', 30.00, 'Completed', 1111),
(312, 3012, 2212, '2022-08-05', 'Replace broken camera module', 80.00, 'In progress', 1103),
(313, 3013, 2213, '2022-09-01', 'Repair damaged microphone', 50.00, 'Completed', 1103),
(314, 3014, 2214, '2022-09-15', 'Replace cracked back panel', 70.00, 'In progress', 1112),
(315, 3015, 2215, '2022-10-10', 'Repair  damage water', 120.00, 'Completed', 1113),
(316, 3016, 2216, '2022-11-01', 'Replace broken screen', 150.00, 'In progress', 1114),
(317, 3017, 2217, '2022-11-15', 'Repair software issue', 30.00, 'Completed', 1115),
(318, 3018, 2218, '2022-12-05', 'Replace damaged battery', 80.00, 'In progress', 1116),
(319, 3019, 2219, '2022-12-20', 'Repair faulty power button', 50.00, 'Completed', 1101),
(320, 3020, 2220, '2023-01-01', 'Replace broken speaker', 70.00, 'In progress', 1101),
(321, 3021, 2221, '2022-01-01', 'Broken screen replacement', 150.00, 'Completed', 1101),
(322, 3022, 2222, '2022-02-15', 'Battery replacement', 75.00, 'Completed', 1101),
(323, 3023, 2223, '2022-03-10', 'Charging port repair', 100.00, 'In Progress', 1102),
(324, 3024, 2224, '2022-04-05', 'Water damage repair', 200.00, 'In Progress', 1102),
(325, 3025, 2225, '2022-05-20', 'Broken camera repair', 90.00, 'Completed', 1102),
(326, 3026, 2226, '2022-06-15', 'Speaker replacement', 50.00, 'Completed', 1102),
(327, 3027, 2227, '2022-07-10', 'Screen repair', 120.00, 'In Progress', 1115),
(328, 3028, 2228, '2022-08-05', 'Software update', 25.00, 'Completed', 1114),
(329, 3029, 2229, '2022-09-20', 'Cracked screen replacement', 150.00, 'Completed', 1114),
(330, 3030, 2230, '2022-10-15', 'Battery replacement', 75.00, 'In Progress', 1106),
(331, 3031, 2231, '2022-11-10', 'Charging port repair', 100.00, 'Completed', 1109),
(332, 3032, 2232, '2022-12-05', 'Water damage repair', 200.00, 'In Progress', 1110),
(333, 3033, 2233, '2022-01-01', 'Replaced broken screen', 100.00, 'Completed', 1111),
(334, 3034, 2234, '2022-01-02', 'Replaced faulty battery', 50.00, 'Completed', 1106),
(335, 3035, 2235, '2022-01-03', 'Repaired charging port', 75.00, 'In progress', 1105),
(336, 3036, 2236, '2022-01-04', 'Repaired water damage', 200.00, 'Completed', 1115),
(337, 3037, 2237, '2022-01-05', 'Replaced damaged keyboard', 125.00, 'In progress', 1115),
(338, 3038, 2238, '2022-01-06', 'Repaired software issue', 50.00, 'Completed', 1105),
(339, 3039, 2239, '2022-01-07', 'Repaired broken hinge', 150.00, 'Completed', 1105),
(340, 3040, 2240, '2022-01-08', 'Repaired cracked case', 100.00, 'In progress', 1105),
(341, 3041, 2241, '2022-01-09', 'Repaired faulty fan', 75.00, 'Completed', 1105),
(342, 3042, 2242, '2022-01-10', 'Repaired damaged motherboard', 250.00, 'In progress', 1111),
(343, 3043, 2243, '2022-01-11', 'Replaced damaged display cable', 50.00, 'Completed', 1112),
(344, 3044, 2244, '2022-01-12', 'Replaced faulty RAM', 100.00, 'Completed', 1107),
(345, 3045, 2245, '2022-01-13', 'Repaired broken power button', 75.00, 'In progress', 1107),
(346, 3046, 2246, '2022-01-14', 'Repaired water damage', 200.00, 'Completed', 1107),
(347, 3047, 2247, '2022-01-15', 'Repaired software issue', 50.00, 'In progress', 1109),
(348, 3048, 2248, '2022-01-16', 'Repaired broken screen', 150.00, 'Completed', 1116),
(349, 3049, 2249, '2022-01-17', 'Repaired charging port', 75.00, 'Completed', 1110),
(350, 3050, 2250, '2022-01-18', 'Repaired faulty keyboard', 100.00, 'In progress', 1107);


/*15: Maintenance table */
DROP TABLE IF EXISTS Maintenance; 
CREATE TABLE Maintenance (
    MaintenanceID INT PRIMARY KEY,
    MaintenanceDate DATE,
    ProductID INT,
    Description TEXT,
    Cost DECIMAL(10,2),
    MaintenanceType VARCHAR(255),
     FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
    /*MaintenanceCenterID INT,*/
    /*CONSTRAINT fk_maintenancecenter FOREIGN KEY (MaintenanceCenterID)
        REFERENCES MaintenanceCenter(MaintenanceCenterID) */
);


INSERT INTO Maintenance (Maintenanceid, Maintenancedate, Productid, Description, Cost, Maintenancetype)
VALUES
(3301, '2023-03-28', 3001, 'Replaced faulty motor', 150.00, 'Repair'),
(3302, '2023-02-15', 3003, 'Cleaned filters', 20.00, 'Maintenance'),
(3303, '2022-12-01', 3002, 'Replaced heating element', 75.00, 'Repair'),
(3304, '2022-09-05', 3001, 'Replaced compressor', 200.00, 'Repair'),
(3305, '2022-08-20', 3004, 'Cleaned condenser coils', 25.00, 'Maintenance'),
(3306, '2022-07-15', 3005, 'Replaced water pump', 60.00, 'Repair'),
(3307, '2022-06-30', 3006, 'Checked for leaks', 15.00, 'Maintenance'),
(3308, '2022-05-25', 3007, 'Replaced broken knob', 10.00, 'Repair'),
(3309, '2022-04-10', 3008, 'Replaced door seal', 35.00, 'Repair'),
(3310, '2022-03-21', 3009, 'Replaced blower motor', 80.00, 'Repair'),
(3311, '2022-02-05', 3010, 'Cleaned ventilation ducts', 50.00, 'Maintenance'),
(3312, '2022-01-01', 3011, 'Replaced thermostat', 45.00, 'Repair'),
(3313, '2021-12-15', 3012, 'Checked electrical connections', 15.00, 'Maintenance'),
(3314, '2021-10-31', 3013, 'Checked for gas leaks', 20.00, 'Maintenance'),
(3315, '2021-09-25', 3014, 'Replaced drain pump', 50.00, 'Repair'),
(3316, '2021-08-10', 3015, 'Replaced burnt out bulb', 5.00, 'Repair'),
(3317, '2021-07-05', 3015, 'Cleaned lint trap', 10.00, 'Maintenance'),
(3318, '2021-06-15', 3001, 'Replaced control board', 100.00, 'Repair'),
(3319, '2021-05-20', 3005, 'Cleaned air filter', 15.00, 'Maintenance'),
(3320, '2021-04-01', 3002, 'Replaced water valve', 40.00, 'Repair'),
(3321, '2021-03-15', 3007, 'Replaced damaged cord', 25.00, 'Repair'),
(3322, '2021-02-05', 3007, 'Replaced broken hinge', 30.00, 'Repair'),
(3323, '2021-01-10', 3008, 'Cleaned burner assembly', 20.00, 'Maintenance'),
(3324, '2020-12-05', 3009, 'Replaced ignitor', 40.00, 'Repair'),
(3325, '2020-11-01', 3009, 'Replaced fan motor', 85.00, 'Repair'),
(3326, '2020-10-05', 3010, 'Replaced heating element', 60.00, 'Repair'),
(3327, '2020-09-15', 3010, 'Checked for refrigerant leak',55.00,'Repair'),
(3328, '2020-08-20', 3011, 'Replaced gasket', 30.00, 'Repair'),
(3329, '2020-07-25', 3008, 'Checked for air flow', 15.00, 'Maintenance'),
(3330, '2020-06-30', 3008, 'Replaced heating element', 70.00, 'Repair'),
(3331, '2020-05-15', 3008, 'Replaced damaged hose', 20.00, 'Repair'),
(3332, '2020-04-20', 3005, 'Cleaned exterior', 10.00, 'Maintenance'),
(3333, '2020-03-25', 3002, 'Replaced belt', 25.00, 'Repair'),
(3334, '2020-02-29', 3003, 'Replaced air filter', 10.00, 'Maintenance'),
(3335, '2020-01-15', 3002, 'Replaced pump seal', 45.00, 'Repair'),
(3336, '2019-12-20', 3009, 'Replaced broken drawer', 30.00, 'Repair'),
(3337, '2019-11-25', 3011, 'Cleaned water dispenser', 5.00, 'Maintenance'),
(3338, '2019-08-20', 3012, 'Replaced evaporator fan', 90.00, 'Repair'),
(3339, '2019-07-25', 3012, 'Replaced oven racks', 25.00, 'Repair'),
(3340, '2019-06-30', 3013, 'Checked for water leaks', 15.00, 'Maintenance'),
(3341, '2022-11-21', 3007, 'Tightened loose wires', 30.00, 'Maintenance'), 
(3342, '2022-10-10', 3006, 'Replaced broken handle', 40.00, 'Repair'),
(3343, '2021-11-20', 3006, 'Replaced heating coil', 65.00, 'Repair'),
(3344, '2019-10-30', 3010, 'Replaced freezer thermostat', 50.00, 'Repair'), 
(3345, '2019-09-15', 3004, 'Replaced door gasket', 35.00, 'Repair'),
(3346, '2019-05-15', 3004, 'Replaced heating thermostat', 40.00, 'Repair'), 
(3347, '2019-04-20', 3014, 'Replaced water filter', 20.00, 'Maintenance'), 
(3348, '2019-03-25', 3013, 'Replaced temperature sensor', 60.00, 'Repair'), 
(3349, '2019-02-28', 3014, 'Replaced gas valve', 50.00, 'Repair'),
(3350, '2019-01-15', 3001, 'Replaced ice maker', 75.00, 'Repair');


/*16: Discount table*/
DROP TABLE IF EXISTS Discount; 
CREATE TABLE Discount (
    DiscountID INT PRIMARY KEY,
    ProductID INT,
    DiscountType VARCHAR(255),
    DiscountAmount DECIMAL(10,2),
    StartDate DATE,
    EndDate DATE,
     FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
    /*CONSTRAINT fk_product FOREIGN KEY (ProductID)
        REFERENCES Product(ProductID)*/
);

INSERT INTO Discount (discountid, productid, discounttype, discountamount, startdate,
enddate)
VALUES
(401, 3001, 'Percentage', 10.00, '2023-03-01', '2023-03-31'),
(402, 3002, 'Amount', 20.00, '2023-03-01', '2023-03-31'),
(403, 3003, 'Percentage', 5.00, '2023-03-01', '2023-03-31'),
(404, 3004, 'Amount', 15.00, '2023-03-01', '2023-03-31'),
(405, 3005, 'Percentage', 20.00, '2023-03-01', '2023-03-31'),
(406, 3006, 'Amount', 25.00, '2023-03-01', '2023-03-31'),
(407, 3007, 'Percentage', 15.00, '2023-03-01', '2023-03-31'),
(408, 3008, 'Amount', 30.00, '2023-03-01', '2023-03-31'),
(409, 3009, 'Percentage', 25.00, '2023-03-01', '2023-03-31'),
(410, 3010, 'Amount', 40.00, '2023-03-01', '2023-03-31'),
(411, 3011, 'Percentage', 10.00, '2023-04-01', '2023-04-30'),
(412, 3012, 'Amount', 25.00, '2023-04-01', '2023-04-30'),
(413, 3013, 'Percentage', 5.00, '2023-04-01', '2023-04-30'),
(414, 3014, 'Amount', 20.00, '2023-04-01', '2023-04-30'),
(415, 3015, 'Percentage', 15.00, '2023-04-01', '2023-04-30'),
(416, 3016, 'Amount', 30.00, '2023-04-01', '2023-04-30'),
(417, 3017, 'Percentage', 20.00, '2023-04-01', '2023-04-30'),
(418, 3018, 'Amount', 35.00, '2023-04-01', '2023-04-30'),
(419, 3019, 'Percentage', 30.00, '2023-04-01', '2023-04-30'),
(420, 3020, 'Amount', 50.00, '2023-04-01', '2023-04-30'),
(421, 3021, 'Percentage', 5.00, '2023-05-01', '2023-05-31'),
(422, 3022, 'Amount', 10.00, '2023-05-01', '2023-05-31'),
(423, 3023, 'Percentage', 15.00, '2023-05-01','2023-05-30'),
(424, 3024, 'Amount', 25.00, '2023-05-01', '2023-05-31'),
(425, 3025, 'Percentage', 10.00, '2023-05-01', '2023-05-31'),
(426, 3026, 'Amount', 30.00, '2023-05-01', '2023-05-31'),
(427, 3027, 'Percentage', 20.00, '2023-05-01', '2023-05-31'),
(428, 3028, 'Amount', 35.00, '2023-05-01', '2023-05-31'),
(429, 3029, 'Percentage', 25.00, '2023-05-01', '2023-05-31'),
(430, 3030, 'Amount', 50.00, '2023-05-01', '2023-05-31'),
(431, 3031, 'Percentage', 5.00, '2023-06-01', '2023-06-30'),
(432, 3032, 'Amount', 15.00, '2023-06-01', '2023-06-30'),
(433, 3033, 'Percentage', 10.00, '2023-06-01', '2023-06-30'),
(434, 3034, 'Amount', 40.00, '2023-06-01', '2023-06-30'),
(435, 3035, 'Percentage', 15.00, '2023-06-01', '2023-06-30'),
(436, 3036, 'Amount', 25.00, '2023-06-01', '2023-06-30'),
(437, 3037, 'Percentage', 20.00, '2023-06-01', '2023-06-30'),
(438, 3038, 'Amount', 30.00, '2023-06-01', '2023-06-30'),
(439, 3039, 'Percentage', 30.00, '2023-06-01', '2023-06-30'),
(440, 3040, 'Amount', 50.00, '2023-06-01', '2023-06-30'),
(441, 3041, 'Percentage', 5.00, '2023-07-01', '2023-07-31'),
(442, 3042, 'Amount', 20.00, '2023-07-01', '2023-07-31'),
(443, 3043, 'Percentage', 15.00, '2023-07-01', '2023-07-31'),
(444, 3044, 'Amount', 25.00, '2023-07-01', '2023-07-31'),
(445, 3045, 'Percentage', 10.00, '2023-07-01', '2023-07-31'),
(446, 3046, 'Amount', 35.00, '2023-07-01', '2023-07-31'),
(447, 3047, 'Percentage', 20.00, '2023-07-01', '2023-07-31'),
(448, 3048, 'Amount', 30.00, '2023-08-01', '2023-08-31'),
(449, 3049, 'Percentage', 25.00, '2023-08-01', '2023-08-31'),
(450, 3050, 'Amount', 50.00, '2023-08-01', '2023-08-31');


-- Hemanth
-- Simple Queries
SELECT * FROM CATEGORY;
SELECT * FROM Manufacturer;
SELECT * FROM Product;
SELECT * FROM Supplier;
SELECT * FROM Customer;
SELECT * FROM Employee;
SELECT * FROM Sales;
SELECT * FROM Ordertable;
SELECT * FROM OrderStatus;
SELECT * FROM Stock;
SELECT * FROM Warranty;
SELECT * FROM ServiceCenter;
SELECT * FROM ServiceRequest;
SELECT * FROM Repair;
SELECT * FROM maintenance;
SELECT * FROM Discount;

-- Select the total number of warranties:
SELECT COUNT(*) AS TotalWarranties FROM warranty;

-- Select all warranties with their remaining warranty duration in days:
SELECT *, DATEDIFF(WarrantyEndDate, NOW()) AS RemainingDays FROM warranty;

-- Select all warranties that have expired:
SELECT * FROM warranty WHERE WarrantyEndDate < NOW();


-- Complex Queries

-- 1. Find all the manufacturer and category names for all products present

SELECT C.name AS 'Category Name', P.productname AS 'Product Name', M.Name AS 'Manufacturer Name' FROM Category AS C INNER JOIN Product AS P ON P.categoryid = C.categoryid INNER JOIN Manufacturer AS M ON M.ManufacturerID = P.ManufacturerID;

-- 2. Get the name of the customer, city and the product bought. Also get the sale date and name and city of the employee who handled the order. 

SELECT concat(e.FirstName,' ',e.LastName) AS 'Employee Name', e.City, s.SaleDate, p.ProductName, concat(c.FirstName,' ',c.LastName) AS 'Customer Name', c.City FROM Employee AS e INNER JOIN Sales as s ON e.EmployeeID = s.EmployeeID INNER JOIN Product AS p ON p.ProductID = s.ProductID INNER JOIN Customer c ON s.CustomerID = c.CustomerID;

-- 3. Get all manufacturers name, supplier name and phone number and display average stock quantity for existing stock.

SELECT DISTINCT M.Name AS 'Manufacturer Name', SP.Name AS 'Supplier Name', SP.ContactPhone, AVG(S.quantity) AS 'Average Quantity' FROM Stock AS S RIGHT JOIN Manufacturer AS M ON S.manufacturerid = M.manufacturerid LEFT JOIN Supplier as SP ON SP.supplierid = S.supplierid GROUP BY M.Name, SP.Name, SP.Contactphone, S.quantity;

-- 4. This subquery will return the average repair cost for each product that was repaired in the New York service center in the year 2022 and whose repair status is "Completed", but only for those products whose average repair cost is greater than the overall average repair cost across all completed repairs.--

SELECT ProductID, AVG(RepairCost) as AvgCost
FROM Repair
WHERE ServiceCenterID IN (
    SELECT ServiceCenterID
    FROM ServiceCenter
    WHERE State = 'NY'
)
AND YEAR(RepairDate) = 2022
AND RepairStatus = 'Completed'
GROUP BY ProductID
HAVING AVG(RepairCost) > (
    SELECT AVG(RepairCost)
    FROM Repair
    WHERE RepairStatus = 'Completed'
);

-- 5. This subquery will return the average time it takes to complete a repair request for each product that has been requested at Service Center 1 and whose status is "In Progress" (status ID 1), but only for those products whose average repair time is greater than the overall average repair time for all "In Progress" requests. The subquery makes use of a nested subquery to calculate the overall average repair time for all "In Progress" requests, and then uses that value in the HAVING clause to filter the results. The subquery also makes use of a LEFT JOIN to join the ServiceRequest and Repair tables, so that only requests that have a corresponding repair are included in the calculation of repair time. --

SELECT ProductID, AVG(DATEDIFF(RepairDate, RequestDate)) as AvgRepairTime
FROM (
    SELECT sr.ServiceRequestID, sr.RequestDate, sr.ProductID, r.RepairDate
    FROM ServiceRequest sr
    LEFT JOIN Repair r ON sr.ServiceRequestID = r.ServiceRequestID
    WHERE sr.ServiceCenterID = 1101
    AND sr.StatusID = 1
) subquery
GROUP BY ProductID
HAVING AVG(DATEDIFF(RepairDate, RequestDate)) > (
    SELECT AVG(DATEDIFF(RepairDate, RequestDate))
    FROM (
        SELECT sr.ServiceRequestID, sr.RequestDate, r.RepairDate
        FROM ServiceRequest sr
        LEFT JOIN Repair r ON sr.ServiceRequestID = r.ServiceRequestID
        WHERE sr.StatusID = 1
    ) subquery2
);

-- get category name based on id
DROP FUNCTION IF EXISTS getCategoryName;
DELIMITER //
CREATE FUNCTION getCategoryName (categoryId_P INT) 
RETURNS VARCHAR(255)  
DETERMINISTIC
BEGIN 
    DECLARE categoryName VARCHAR(255);
    SELECT Name INTO categoryName FROM Category WHERE CategoryID = categoryId_P;
    RETURN categoryName;
END //
DELIMITER ;

SELECT getCategoryName(1003);
--

-- Ashish
-- 6
SELECT OrderID, CustomerID FROM Ordertable ORDER BY OrderID DESC LIMIT 1;

-- 7
SELECT CustomerID, COUNT(*) AS num_orders FROM Ordertable GROUP BY CustomerID;

-- 8
SELECT COUNT(DISTINCT CustomerID) AS num_customers_cash
FROM Ordertable
WHERE PaymentMethod = 'Cash';

-- 9
select *
FROM Ordertable
WHERE OrderDate BETWEEN '2023-01-01' AND '2023-03-11';


-- 10
SELECT concat(FirstName," ", LastName) as fullName, Address, phone
FROM Employee
WHERE HireDate >= DATE_SUB(NOW(), INTERVAL 30 DAY) order by firstName, lastName;



-- 11
SELECT sr.ServiceRequestID, sr.RequestDate, concat(c.FirstName, c.LastName) as fullName, p.ProductName, sr.Description, sc.Name
FROM ServiceRequest sr
INNER JOIN Customer c ON sr.CustomerID = c.CustomerID
INNER JOIN Product p ON sr.ProductID = p.ProductID
INNER JOIN ServiceCenter sc ON sr.ServiceCenterID = sc.ServiceCenterID;

-- 12

-- Before update trigger for Order Status
DELIMITER //

CREATE TRIGGER tr_OrderStatus_before_update_no_audit
BEFORE UPDATE ON OrderStatus
FOR EACH ROW
BEGIN
    -- Check if the employee is authorized to change the order status
    IF NEW.Status NOT IN ('New', 'Processing', 'Shipped', 'Delivered', 'Cancelled') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid order status';
    END IF;
END;
//

DELIMITER ;

	UPDATE OrderStatus
	SET Status = 'New'
	WHERE OrderID = 8001;

select * from orderstatus where OrderID = 8001;


-- 13
DELIMITER //

-- Before delete trigger for Employee
CREATE TRIGGER tr_OrderStatus_before_delete
BEFORE DELETE ON OrderStatus
FOR EACH ROW
BEGIN
    -- Check if the order status can be deleted
    IF OLD.Status NOT IN ('New', 'Cancelled') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete order status with status other than "New" or "Cancelled"';
    END IF;
END;

//

DELIMITER ;

-- trigger for beofre update on OrderStatus
DELIMITER //
CREATE TRIGGER tr_OrderStatus_before_update 
BEFORE UPDATE ON OrderStatus 
FOR EACH ROW 
BEGIN 
INSERT INTO OrderStatusAudit (orderstatusid, Status, OrderID, statusDate,ModifiedAt) VALUES (OLD.orderstatusid, OLD.Status, OLD.OrderID, OLD.statusDate,now());
END //
DELIMITER ;
-- use of beofre update on OrderStatus
select * from OrderStatus;
update OrderStatus set Status='Cancelled' where OrderStatusID=102;select * from OrderStatusAudit;

/*before delete trigger*/
DELIMITER //
CREATE TRIGGER tr_Discounts_before_delete 
BEFORE DELETE ON Discount 
FOR EACH ROW 
BEGIN 
-- Insert a new row into the audit table for the deleted discount 
INSERT INTO DiscountsAudit (DiscountID, ProductID, DiscountType, DiscountAmount, StartDate, EndDate,ModifiedAt) VALUES(OLD.DiscountID, OLD.ProductID, OLD.DiscountType, OLD.DiscountAmount, OLD.StartDate, OLD.EndDate,now());
END //
DELIMITER ;
select * from Discount;
delete from Discount where DiscountID=402;
select * from DiscountsAudit;

-- Srinivasan
/* 11 - Query1: To get Manufacturer name, prod name, qty, price from table manufacturer, product and stocks when manufcaturer
 location country is united states */

SELECT m.Name AS ManufacturerName, p.ProductName, s.Quantity, s.CostPrice, s.RetailPrice, m.manufacturerID
FROM Manufacturer m
INNER JOIN Product p ON m.ManufacturerID = p.ManufacturerID
INNER JOIN Stock s ON p.ProductID = s.ProductID
WHERE m.Country = 'United States';

-- 12 Query 2:Select all the stock in price is greater than average cost price

SELECT s.StockID, s.Quantity, s.CostPrice, s.RetailPrice, s.ProductID
FROM Stock s
WHERE costprice > (SELECT AVG(Costprice) FROM stock);

-- 13 -Query3:Write a query to display all the products in ascending which are having same price

SELECT p1.ProductName, p1.Description ,p1.cost
FROM Product p1
JOIN Product p2 ON p1.Cost = p2.Cost AND p1.ProductID <> p2.ProductID
ORDER BY p1.Cost, p1.ProductName;

-- 14 - Query4:Write a query to display all the manufacturer name having same city location 
SELECT m.name, m.address, m.city, m.state, m.country, m.manufacturerid FROM manufacturer m
 JOIN manufacturer m2 ON (m.city= m2.city AND m.manufacturerid <> m2.manufacturerid ) order by m.city;


-- Function to get stock status -----------------------------------------
SELECT * FROM Stock;

DROP FUNCTION IF EXISTS get_stock_status ;
DELIMITER //
CREATE FUNCTION  get_stock_status
(
Qty_amount INT
)
RETURNS INT 
deterministic
BEGIN
DECLARE count_status int ;
IF Qty_amount IS NULL THEN
        SET Qty_amount = 5;
    END IF;
SELECT COUNT(*)
INTO count_status
FROM stock
WHERE Quantity = Qty_amount;
RETURN count_status;
END//

-- count records where Quantity = 5
SELECT get_stock_status(1);

-- count records where Quantity = 10
SELECT get_stock_status(10);

-- -- Triggers before INSERT  ----------------------------------
SELECT * FROM Manufacturer;
-- Triggers before INSERT 
DROP TRIGGER IF EXISTS update_manufacturer_country
DELIMITER //

CREATE TRIGGER update_manufacturer_country
BEFORE INSERT ON manufacturer
FOR EACH ROW
BEGIN
    SET NEW.Country = REPLACE(NEW.Country, 'United States', 'USA');
END //
DELIMITER ;

-- Silpa
-- 15 - 1.Query that joins the Supplier and Stock tables, and uses the SUM function to calculate the total quantity of each product supplied by each supplier:

SELECT s.ProductID, su.SupplierID, su.Name, SUM(s.Quantity) AS TotalQuantity
FROM Stock s
INNER JOIN Supplier su ON s.SupplierID = su.SupplierID
GROUP BY s.ProductID, su.SupplierID, su.Name;


-- 16 - 2. Supplier and Stock tables and retrieves data for all products that have a retail price higher than $50, ordered by the quantity in stock in descending order:

SELECT s.StockID, p.ProductName, s.Quantity, s.RetailPrice, su.Name, su.ContactName
FROM Stock s
INNER JOIN Product p ON s.ProductID = p.ProductID
INNER JOIN Supplier su ON s.SupplierID = su.SupplierID
WHERE s.RetailPrice > 50
ORDER BY s.Quantity DESC;

-- 17 - 3.Query that joins the Supplier and Stock tables and uses a subquery to retrieve the product with the highest retail price for each supplier:

SELECT su.Name, p.ProductName, s.RetailPrice
FROM Supplier su
INNER JOIN (
    SELECT SupplierID, MAX(RetailPrice) AS MaxRetailPrice
    FROM Stock
    GROUP BY SupplierID
) AS maxs ON su.SupplierID = maxs.SupplierID
INNER JOIN Stock s ON maxs.SupplierID = s.SupplierID AND maxs.MaxRetailPrice = s.RetailPrice
INNER JOIN Product p ON s.ProductID = p.ProductID;

DELIMITER //
CREATE FUNCTION count_deliveries_by_supplier(supplierid VARCHAR(5))
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE delivery_count INT;
SELECT COUNT(*) INTO delivery_count
FROM Supplier as S
WHERE S.supplierid = supplierid;
RETURN delivery_count;
END;
//   
DELIMITER ;

SELECT count_deliveries_by_supplier(4001);

--

DELIMITER //
CREATE TRIGGER supplier_insert_trigger
AFTER INSERT ON Supplier
FOR EACH ROW
BEGIN
INSERT INTO Supplier (supplierid, name, created_at)
VALUES (NEW.supplierid, NEW.name, NOW());
END//
DELIMITER ;


-- Gayathri
/* 18 - 1 Get a list of all the products that have been repaired, along with their total repair cost:*/
SELECT p.ProductName, SUM(r.RepairCost) AS TotalRepairCost
FROM Product p
INNER JOIN Repair r ON p.ProductID = r.ProductID
GROUP BY p.ProductName;


/* 19 - 2Get a list of all the service centers that have repaired products, along with the total number of products they have repaired:*/
SELECT s.ServiceCenterID,s.Name, COUNT(DISTINCT r.ProductID) AS TotalProductsRepaired
FROM ServiceCenter s
INNER JOIN Repair r ON s.ServiceCenterID = r.ServiceCenterID
GROUP BY s.ServiceCenterID;


/* 20 - Get a list of all the customers who have submitted service requests that have resulted in repairs, along with the total cost of their repairs:*/
SELECT c.CustomerID,c.Firstname, SUM(r.RepairCost) AS TotalRepairCost
FROM Customer c
INNER JOIN ServiceRequest sr ON c.CustomerID = sr.CustomerID
INNER JOIN Repair r ON sr.ServiceRequestID = r.ServiceRequestID
GROUP BY c.CustomerID;


/*write procedures for the repair, category , and service_center tables */
DELIMITER //

CREATE PROCEDURE GetTotalRepairCostForCategory(IN categoryId INT)
BEGIN
    SELECT SUM(r.RepairCost) AS TotalRepairCost
    FROM Repair r
    INNER JOIN Product p ON r.ProductID = p.ProductID
    INNER JOIN Category c ON p.CategoryID = c.CategoryID
    WHERE c.CategoryID = categoryId;
END;


/*-------function in sql----------*/
DROP FUNCTION IF EXISTS get_customer_repair_report;
DELIMITER //
CREATE FUNCTION get_customer_repair_report()
RETURNS VARCHAR(5000)
DETERMINISTIC
BEGIN
    DECLARE report VARCHAR(5000);

    /* Call the GetCustomerRepairReport procedure and store the results in the report variable:*/
    CALL GetCustomerRepairReport();
    SELECT CONCAT('Customer Repair Report:', CHAR(10), report) INTO report;

    /* Return the report string:*/
    RETURN report;

END //
DELIMITER ;

-- Nikhith
-- 21 Queriesformaintenance1.Showthetotalmaintenancecostforeachproduct:
SELECT productid,SUM(cost)AStotal_cost FROM maintenance GROUP BY productid;

-- 22 - 2.Showthenumberofmaintenanceandrepairtasksperformedforeachproduct:
SELECT productid,COUNT(CASE WHEN maintenancetype='Maintenance' THEN 1 END) AS maintenance_count,COUNT(CASE WHEN maintenancetype='Repair' THEN 1 END) AS repair_count FROM maintenance GROUP BY productid;

-- 23 - 3.Showtheaveragecostofmaintenanceandrepairtasks:
SELECT maintenancetype,AVG(cost) AS average_cost FROM maintenance GROUP BY maintenancetype;

-- 24 - Salesqueries1.WhatisthetotalrevenueforeachdayinJanuary2022?

SELECT saledate,SUM(total) AS revenue FROM Sales WHERE saledate BETWEEN '2022-01-01' AND '2022-01-31' GROUP BY saledate;

-- 25 - 2.WhatisthetotalrevenueforeachproductinJanuary2022?
SELECT productid,SUM(total) AS revenue FROM Sales WHERE saledate BETWEEN '2022-01-01' AND '2022-01-31' GROUP BY productid;

-- 26 - 3.WhichproducthasthehighestrevenueinJanuary2022?
SELECT productid,SUM(total) AS revenue FROM Sales WHERE saledate BETWEEN '2022-01-01' AND '2022-01-31' GROUP BY productid ORDER BY revenue DESC LIMIT 1;

-- 27 - Stocktablequeries1.Toretrievethetotalquantityandcostpriceofallproductsinstock:
SELECT SUM(quantity) AS total_quantity,SUM(costprice*quantity) AS total_cost FROM stock;

-- 28 -  2.Toretrievetheproductwiththehighestretailprice:
SELECT * FROM stock WHERE retailprice = (SELECT MAX(retailprice) FROM stock);

-- 29 - 3.Toretrievetheproductinformationalongwithitssupplierandmanufacturerinformation:
SELECT s.productid,s.quantity,s.costprice,s.retailprice,su.name,m.name FROM stock s INNER JOIN supplier su ON s.supplierid=su.supplierid INNER JOIN manufacturer m ON s.manufacturerid=m.manufacturerid;

-- 30 - DISCOUNTTABLupdate_manufacturer_countryEQUERIES1.Retrievealldiscountsforaspecificproduct:
SELECT * FROM discount WHERE productid = 3001;

-- 31 - 2.Retrievealldiscountsthatarecurrentlyvalid:
SELECT * FROM discount WHERE startdate <= CURDATE() AND enddate >= CURDATE();

-- 32 - 3.Retrievethetotaldiscountamountforallproducts:
SELECT SUM(discountamount) as total_discount FROM discount;

#procedure to products with warranty duration more than 2 years
drop procedure if exists getallproductss;
delimiter //
create procedure getallproductss()
begin
select p.ProductName,W.WarrantyDuration from Product P join Warranty w on p.ProductID=w.ProductID where w.WarrantyDuration>=24;
End //
Delimiter ;
call getallproductss();


#procedure to get pending orders
drop procedure if exists pendingorders;
delimiter $$
create procedure pendingorders()
begin
select * from orderstatus where status='Pending';
end $$
Delimiter ;
call pendingorders();

-- 
select * from employeeaudit;
SELECT * FROM manufacturer;