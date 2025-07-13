-- DROP DATABASE CELESTE;
-- CREATE DATABASE CELESTE;
USE CELESTE;

INSERT INTO Admin (Name, Email, Password) 
VALUES ('AdminUser', 'admin@celeste.com', 'SecurePass123');

-- INSERT INTO Supplier (Brand_Name, Supplier_Name, Supplier_Email, Supplier_Contact) VALUES
-- ('Titan', 'Titan Company Ltd', 'supply.titan@titan.com', '9876543210'),
-- ('Ray-Ban India', 'Luxottica India', 'supply.rayban@luxottica.in', '9876543211'),
-- ('Hidesign', 'Hidesign India Pvt Ltd', 'supply.hidesign@hidesign.com', '9876543212'),
-- ('Fastrack', 'Titan Fastrack', 'supply.fastrack@titan.com', '9876543213'),
-- ('Da Milano', 'Da Milano India', 'supply.damilano@damilano.com', '9876543214'),
-- ('Baggit', 'Baggit India Ltd', 'supply.baggit@baggit.com', '9876543215'),
-- ('Vincent Chase', 'Lenskart Supply', 'supply.vc@lenskart.com', '9876543216'),
-- ('Tommy Hilfiger', 'Tommy India Pvt Ltd', 'supply.tommy@tommy.in', '9876543217'),
-- ('Fossil India', 'Fossil Group India', 'supply.fossil@fossil.in', '9876543218'),
-- ('Lavie', 'Bagzone Lifestyles', 'supply.lavie@bagzone.com', '9876543219'),
-- ('Skybags', 'VIP Industries Ltd', 'supply.skybags@vip.com', '9876543220'),
-- ('Casio India', 'Casio India Pvt Ltd', 'supply.casio@casio.in', '9876543221'),
-- ('Police Lifestyle', 'Police India', 'supply.police@police.in', '9876543222'),
-- ('American Tourister', 'Samsonite India', 'supply.at@samsonite.in', '9876543223'),
-- ('Timex India', 'Timex Group India', 'supply.timex@timex.in', '9876543224'),
-- ('Seiko India', 'Seiko Corp India', 'supply.seiko@seiko.in', '9876543225'),
-- ('Citizen Watches', 'Citizen India Ltd', 'supply.citizen@citizen.in', '9876543226'),
-- ('Daniel Wellington', 'DW India Pvt Ltd', 'supply.dw@dw.in', '9876543227'),
-- ('Sonata', 'Tata Sonata Ltd', 'supply.sonata@titan.com', '9876543228'),
-- ('Michael Kors', 'MK India Trading', 'supply.mk@mk.in', '9876543229'),
-- ('Oakley India', 'Oakley Sports', 'supply.oakley@luxottica.in', '9876543230'),
-- ('Maui Jim', 'Maui Jim India', 'supply.maui@mauijim.in', '9876543231'),
-- ('Vogue Eyewear', 'Vogue India', 'supply.vogue@luxottica.in', '9876543232'),
-- ('Persol', 'Persol Luxottica', 'supply.persol@luxottica.in', '9876543233'),
-- ('Carrera', 'Safilo India', 'supply.carrera@safilo.in', '9876543234'),
-- ('Caprese', 'VIP Bags', 'supply.caprese@vip.in', '9876543235'),
-- ('Wildcraft', 'Wildcraft India', 'supply.wildcraft@wildcraft.in', '9876543236'),
-- ('Esbeda', 'Esbeda Leather', 'supply.esbeda@esbeda.in', '9876543237'),
-- ('Allen Solly', 'Madura Fashion', 'supply.allensolly@madura.in', '9876543238'),
-- ('Lino Perros', 'Lino India Ltd', 'supply.lino@lino.in', '9876543239');

INSERT INTO Supplier (Supplier_ID, Brand_Name, Supplier_Name, Supplier_Email, Supplier_Contact) VALUES
(1, 'Titan', 'Titan Company Ltd', 'supply.titan@titan.com', '9876543210'),
(2, 'Ray-Ban India', 'Luxottica India', 'supply.rayban@luxottica.in', '9876543211'),
(3, 'Hidesign', 'Hidesign India Pvt Ltd', 'supply.hidesign@hidesign.com', '9876543212'),
(4, 'Fastrack', 'Titan Fastrack', 'supply.fastrack@titan.com', '9876543213'),
(5, 'Da Milano', 'Da Milano India', 'supply.damilano@damilano.com', '9876543214'),
(6, 'Baggit', 'Baggit India Ltd', 'supply.baggit@baggit.com', '9876543215'),
(7, 'Vincent Chase', 'Lenskart Supply', 'supply.vc@lenskart.com', '9876543216'),
(8, 'Tommy Hilfiger', 'Tommy India Pvt Ltd', 'supply.tommy@tommy.in', '9876543217'),
(9, 'Fossil India', 'Fossil Group India', 'supply.fossil@fossil.in', '9876543218'),
(10, 'Lavie', 'Bagzone Lifestyles', 'supply.lavie@bagzone.com', '9876543219'),
(11, 'Skybags', 'VIP Industries Ltd', 'supply.skybags@vip.com', '9876543220'),
(12, 'Casio India', 'Casio India Pvt Ltd', 'supply.casio@casio.in', '9876543221'),
(13, 'Police Lifestyle', 'Police India', 'supply.police@police.in', '9876543222'),
(14, 'American Tourister', 'Samsonite India', 'supply.at@samsonite.in', '9876543223'),
(15, 'Timex India', 'Timex Group India', 'supply.timex@timex.in', '9876543224'),
(16, 'Seiko India', 'Seiko Corp India', 'supply.seiko@seiko.in', '9876543225'),
(17, 'Citizen Watches', 'Citizen India Ltd', 'supply.citizen@citizen.in', '9876543226'),
(18, 'Daniel Wellington', 'DW India Pvt Ltd', 'supply.dw@dw.in', '9876543227'),
(19, 'Sonata', 'Tata Sonata Ltd', 'supply.sonata@titan.com', '9876543228'),
(20, 'Michael Kors', 'MK India Trading', 'supply.mk@mk.in', '9876543229'),
(21, 'Oakley India', 'Oakley Sports', 'supply.oakley@luxottica.in', '9876543230'),
(22, 'Maui Jim', 'Maui Jim India', 'supply.maui@mauijim.in', '9876543231'),
(23, 'Vogue Eyewear', 'Vogue India', 'supply.vogue@luxottica.in', '9876543232'),
(24, 'Persol', 'Persol Luxottica', 'supply.persol@luxottica.in', '9876543233'),
(25, 'Carrera', 'Safilo India', 'supply.carrera@safilo.in', '9876543234'),
(26, 'Caprese', 'VIP Bags', 'supply.caprese@vip.in', '9876543235'),
(27, 'Wildcraft', 'Wildcraft India', 'supply.wildcraft@wildcraft.in', '9876543236'),
(28, 'Esbeda', 'Esbeda Leather', 'supply.esbeda@esbeda.in', '9876543237'),
(29, 'Allen Solly', 'Madura Fashion', 'supply.allensolly@madura.in', '9876543238'),
(30, 'Lino Perros', 'Lino India Ltd', 'supply.lino@lino.in', '9876543239');



INSERT INTO Customer (Name, Email_ID, Password, Gender, Phone_Number, Address, Date_of_Birth, Membership) VALUES
('Aarav Sharma', 'aarav.sharma@example.com', 'password123', 'Male', '9876543201', '123, MG Road, Mumbai, Maharashtra', '1995-06-15', 1),
('Ishita Verma', 'ishita.verma@example.com', 'welcome123', 'Female', '9876543202', '45, Saket, New Delhi, Delhi', '1998-04-25', 0),
('Rohan Patel', 'rohan.patel@example.com', 'securepass', 'Male', '9876543203', '67, Satellite Road, Ahmedabad, Gujarat', '1993-11-20', 1),
('Sneha Nair', 'sneha.nair@example.com', 'qwerty123', 'Female', '9876543204', '89, MG Road, Bangalore, Karnataka', '1997-02-10', 0),
('Vikram Mehta', 'vikram.mehta@example.com', 'mypassword', 'Male', '9876543205', '12, Banjara Hills, Hyderabad, Telangana', '1990-08-30', 1),
('Ananya Joshi', 'ananya.joshi@example.com', 'testpass', 'Female', '9276543202', '34, Koregaon Park, Pune, Maharashtra', '2000-05-14', 1),
('Kabir Malhotra', 'kabir1.malhotra@example.com', 'password456', 'Male', '9776543207', '78, Salt Lake, Kolkata, West Bengal', '1994-09-18', 0),
('Pooja Reddy', 'pooja.reddy@example.com', 'letmein', 'Female', '9886543208', '56, Jubilee Hills, Hyderabad, Telangana', '1992-12-05', 1),
('Arjun Das', 'arjun.das@example.com', 'pass1234', 'Male', '9876593209', '23, Connaught Place, New Delhi, Delhi', '1989-07-22', 0),
('Meera Sen', 'meera.sen@example.com', 'abcd1234', 'Female', '9876553210', '90, Electronic City, Bangalore, Karnataka', '1996-03-11', 1),
('Ritesh Gupta', 'ritesh.gupta@example.com', 'password789', 'Male', '9876553211', '11, Park Street, Kolkata, West Bengal', '1993-08-19', 0),
('Nidhi Sharma', 'nidhi.sharma@example.com', 'test12345', 'Female', '9876553212', '77, Gachibowli, Hyderabad, Telangana', '1991-06-24', 1),
('Yash Thakur', 'yash.thakur@example.com', 'passme', 'Male', '9876542213', '102, Hinjewadi, Pune, Maharashtra', '1995-01-30', 0),
('Sanya Kapoor', 'sanya.kapoor@example.com', 'keepmeout', 'Female', '9886543214', '55, Greater Kailash, New Delhi, Delhi', '1994-04-12', 1),
('Aditya Rao', 'aditya.rao@example.com', 'raoaditya', 'Male', '9876553215', '65, JP Nagar, Bangalore, Karnataka', '1997-10-05', 1),
('Rhea Chakraborty', 'rhea.chakraborty@example.com', 'rhea@123', 'Female', '9876543226', '29, Colaba, Mumbai, Maharashtra', '1992-02-14', 0),
('Manish Aggarwal', 'manish.aggarwal@example.com', 'manishpass', 'Male', '9877543217', '88, Civil Lines, Kanpur, Uttar Pradesh', '1996-11-09', 1),
('Neha Bansal', 'neha.bansal@example.com', 'nehapass', 'Female', '9876543318', '44, Rajarhat, Kolkata, West Bengal', '1998-07-07', 0),
('Harsh Vardhan', 'harsh.vardhan@example.com', 'harsh123', 'Male', '9886543219', '120, Anna Nagar, Chennai, Tamil Nadu', '1993-05-28', 1),
('Tanya Mehta', 'tanya.mehta@example.com', 'tanyapass', 'Female', '9826543222', '33, Whitefield, Bangalore, Karnataka', '1995-09-14', 1),
('Sameer Khan', 'sameer.khan@example.com', 'sameerpass', 'Male', '9876542221', '56, Andheri West, Mumbai, Maharashtra', '1990-06-21', 0),
('Kavita Desai', 'kavita.desai@example.com', 'kavitapass', 'Female', '9876542222', '74, Indiranagar, Bangalore, Karnataka', '1994-12-19', 1),
('Amit Trivedi', 'amit.trivedi@example.com', 'amitpass', 'Male', '9896943223', '98, South City, Kolkata, West Bengal', '1997-08-23', 0),
('Pallavi Ghosh', 'pallavi.ghosh@example.com', 'pallavipass', 'Female', '9876544224', '59, Sector 62, Noida, Uttar Pradesh', '1993-03-17', 1),
('Rahul Chatterjee', 'rahul.chatterjee@example.com', 'rahulpass', 'Male', '9976543225', '85, Ballygunge, Kolkata, West Bengal', '1992-07-26', 0),
('Bhavna Iyer', 'bhavna.iyer@example.com', 'bhavnapass', 'Female', '9876643666', '102, MG Road, Chennai, Tamil Nadu', '1996-05-01', 1),
('Vivek Anand', 'vivek.anand@example.com', 'vivekpass', 'Male', '9876543227', '120, Karol Bagh, New Delhi, Delhi', '1995-10-09', 0),
('Rajni Bala', 'rajni.bala@example.com', 'rajnipass', 'Female', '9876543228', '50, BTM Layout, Bangalore, Karnataka', '1999-02-05', 1),
('Aditya Iyer', 'aditya.iyer@example.com', 'pass@123', 'Male', '9876543206', '14, Jayanagar, Bangalore, Karnataka', '1992-08-11', 1),
('Priya Deshmukh', 'priya.deshmukh@example.com', 'priya@987', 'Female', '9876543207', '45, FC Road, Pune, Maharashtra', '1995-07-21', 0),
('Kabir Malhotra', 'kabir.malhotra@example.com', 'kabir@1234', 'Male', '9876543208', '78, Hauz Khas, New Delhi, Delhi', '1993-05-18', 1),
('Sanya Reddy', 'sanya.reddy@example.com', 'reddy#pass', 'Female', '9876543209', '23, Jubilee Hills, Hyderabad, Telangana', '1996-09-09', 0),
('Rajat Joshi', 'rajat.joshi@example.com', 'joshi@secure', 'Male', '9876543210', '56, Civil Lines, Jaipur, Rajasthan', '1994-12-30', 1),
('Neha Kapoor', 'neha.kapoor@example.com', 'neha@pass', 'Female', '9876543211', '89, Andheri East, Mumbai, Maharashtra', '1997-03-15', 0),
('Arjun Rao', 'arjun.rao@example.com', 'arjun#123', 'Male', '9876543212', '34, Whitefield, Bangalore, Karnataka', '1991-11-25', 1),
('Simran Kaur', 'simran.kaur@example.com', 'kaur@pass123', 'Female', '9876543213', '29, Sector 17, Chandigarh', '1998-01-20', 0),
('Rahul Bansal', 'rahul.bansal@example.com', 'rahul@secure', 'Male', '9876543214', '67, Gomti Nagar, Lucknow, Uttar Pradesh', '1993-06-05', 1),
('Tanya Saxena', 'tanya.saxena@example.com', 'saxena@pass', 'Female', '9876543215', '90, Connaught Place, New Delhi, Delhi', '1996-10-12', 0),
('Kunal Gupta', 'kunal.gupta@example.com', 'kunal@123', 'Male', '9876543216', '21, Salt Lake, Kolkata, West Bengal', '1992-04-08', 1),
('Megha Jain', 'megha.jain@example.com', 'megha@pass', 'Female', '9876543217', '32, Laxmi Nagar, New Delhi, Delhi', '1995-02-14', 0),
('Rishi Sen', 'rishi.sen@example.com', 'sen#1234', 'Male', '9876543218', '76, Sector 62, Noida, Uttar Pradesh', '1994-08-19', 1),
('Ananya Mishra', 'ananya.mishra@example.com', 'ananya@secure', 'Female', '9876543219', '54, Boring Road, Patna, Bihar', '1998-05-17', 0),
('Manav Choudhury', 'manav.choudhury@example.com', 'manav@123', 'Male', '9876543220', '38, Hazratganj, Lucknow, Uttar Pradesh', '1991-12-02', 1),
('Pooja Bhardwaj', 'pooja.bhardwaj@example.com', 'pooja@pass', 'Female', '9876543221', '87, Malviya Nagar, Jaipur, Rajasthan', '1997-07-06', 0),
('Saurabh Trivedi', 'saurabh.trivedi@example.com', 'saurabh@pass', 'Male', '9876543222', '93, Ashok Nagar, Chennai, Tamil Nadu', '1993-09-21', 1),
('Aditi Shah', 'aditi.shah@example.com', 'aditi@secure', 'Female', '9876543223', '20, Ellis Bridge, Ahmedabad, Gujarat', '1996-06-28', 0),
('Harsh Vardhan', 'harsh1.vardhan@example.com', 'vardhan@pass', 'Male', '9876543224', '15, South Extension, New Delhi, Delhi', '1992-01-03', 1),
('Rhea Ghosh', 'rhea.ghosh@example.com', 'rhea@pass', 'Female', '9876543225', '98, Ballygunge, Kolkata, West Bengal', '1998-11-14', 0),
('Varun Kapoor', 'varun.kapoor@example.com', 'varun@pass123', 'Male', '9876553226', '45, Powai, Mumbai, Maharashtra', '1994-05-09', 1),
('Sakshi Tiwari', 'sakshi.tiwari@example.com', 'sakshi@secure', 'Female', '9896543227', '37, Gomti Nagar, Lucknow, Uttar Pradesh', '1997-02-22', 0),
('Ankur Dubey', 'ankur.dubey@example.com', 'ankur@pass', 'Male', '9876343228', '72, Alkapuri, Vadodara, Gujarat', '1993-08-29', 1),
('Trisha Mukherjee', 'trisha.mukherjee@example.com', 'trisha@pass', 'Female', '9876543229', '69, Ballygunge, Kolkata, West Bengal', '1996-09-17', 0),
('Devansh Yadav', 'devansh.yadav@example.com', 'devansh@pass', 'Male', '9876543230', '83, Gomti Nagar, Lucknow, Uttar Pradesh', '1992-07-05', 1),
('Shivani Chopra', 'shivani.chopra@example.com', 'shivani@pass', 'Female', '9876543231', '29, Connaught Place, New Delhi, Delhi', '1998-04-12', 0),
('Arnav Saxena', 'arnav.saxena@example.com', 'arnav@pass123', 'Male', '9876543232', '19, Juhu, Mumbai, Maharashtra', '1994-10-01', 1),
('Jhanvi Srivastava', 'jhanvi.srivastava@example.com', 'jhanvi@pass', 'Female', '9876543233', '61, Indiranagar, Bangalore, Karnataka', '1996-03-15', 0),
('Ujjwal Agrawal', 'ujjwal.agrawal@example.com', 'ujjwal@pass', 'Male', '9876543234', '56, MG Road, Pune, Maharashtra', '1993-11-20', 1),
('Tanisha Banerjee', 'tanisha.banerjee@example.com', 'tanisha@secure', 'Female', '9876543235', '43, Salt Lake, Kolkata, West Bengal', '1997-06-29', 0),
('Ritik Sinha', 'ritik.sinha@example.com', 'ritik@pass', 'Male', '9876543236', '75, Alkapuri, Vadodara, Gujarat', '1992-12-10', 1),
('Meera Pillai', 'meera.pillai@example.com', 'meera@pass', 'Female', '9876543237', '23, Jubilee Hills, Hyderabad, Telangana', '1998-01-30', 0),
('Vivek Nambiar', 'vivek.nambiar@example.com', 'vivek@pass123', 'Male', '9876543238', '88, Marine Drive, Mumbai, Maharashtra', '1995-09-07', 1),
('Pallavi Sridhar', 'pallavi.sridhar@example.com', 'pallavi@secure', 'Female', '9876543239', '102, Basavanagudi, Bangalore, Karnataka', '1997-12-21', 0);
-- SELECT * FROM CUSTOMER;


INSERT INTO Product (Product_Name, Brand_Name, Category, Price, Stock_Quantity, Image_URL, Description, Gender, Colour, Size) VALUES
-- Watches
('Titan Analog Watch', 'Titan', 'WATCH', 5999.00, 50, 'https://example.com/titan_analog.jpg', 'Elegant analog watch with leather strap.', 'Male', 'Black', 'Standard'),
('Titan Raga Women\'s Watch', 'Titan', 'WATCH', 7499.00, 40, 'https://example.com/titan_raga.jpg', 'Stylish watch with rose gold finish.', 'Female', 'Rose Gold', 'Standard'),
('Fastrack Sporty Watch', 'Fastrack', 'WATCH', 4299.00, 60, 'https://example.com/fastrack_sporty.jpg', 'Trendy digital watch for active lifestyle.', 'Unisex', 'Blue', 'Standard'),
('Fastrack Leather Strap Watch', 'Fastrack', 'WATCH', 3899.00, 30, 'https://example.com/fastrack_leather.jpg', 'Classic watch with premium leather strap.', 'Male', 'Brown', 'Standard'),
('Casio G-Shock', 'Casio India', 'WATCH', 10999.00, 25, 'https://example.com/casio_gshock.jpg', 'Rugged and durable watch with shock resistance.', 'Male', 'Red', 'Standard'),
('Casio Sheen Women\'s Watch', 'Casio India', 'WATCH', 8499.00, 20, 'https://example.com/casio_sheen.jpg', 'Elegant Sheen series watch for women.', 'Female', 'Silver', 'Standard'),
('Timex Expedition', 'Timex India', 'WATCH', 4999.00, 35, 'https://example.com/timex_expedition.jpg', 'Adventure-ready watch with water resistance.', 'Unisex', 'Green', 'Standard'),
('Seiko Premier Automatic', 'Seiko India', 'WATCH', 19999.00, 15, 'https://example.com/seiko_premier.jpg', 'Premium automatic watch with sapphire glass.', 'Male', 'Black', 'Standard'),
('Michael Kors Rose Gold Watch', 'Michael Kors', 'WATCH', 15499.00, 25, 'https://example.com/mk_rose_gold.jpg', 'Luxury rose gold watch with a crystal dial.', 'Female', 'Rose Gold', 'Standard'),
-- Sunglasses
('Ray-Ban Aviator', 'Ray-Ban India', 'SUNGLASS', 8799.00, 70, 'https://example.com/rayban_aviator.jpg', 'Classic aviator sunglasses with UV protection.', 'Unisex', 'Gold', 'Medium'),
('Ray-Ban Wayfarer', 'Ray-Ban India', 'SUNGLASS', 7299.00, 65, 'https://example.com/rayban_wayfarer.jpg', 'Trendy wayfarer sunglasses for casual wear.', 'Unisex', 'Black', 'Medium'),
('Vincent Chase Polarized Sunglasses', 'Vincent Chase', 'SUNGLASS', 3499.00, 50, 'https://example.com/vc_polarized.jpg', 'Stylish sunglasses with polarized lenses.', 'Unisex', 'Brown', 'Large'),
('Oakley Sports Sunglasses', 'Oakley India', 'SUNGLASS', 10299.00, 40, 'https://example.com/oakley_sports.jpg', 'High-performance sunglasses for outdoor sports.', 'Unisex', 'Grey', 'Medium'),
('Maui Jim Classic Sunglasses', 'Maui Jim', 'SUNGLASS', 12499.00, 30, 'https://example.com/maui_classic.jpg', 'Premium polarized sunglasses for ultimate clarity.', 'Unisex', 'Blue', 'Large'),
('Persol Retro Sunglasses', 'Persol', 'SUNGLASS', 9999.00, 25, 'https://example.com/persol_retro.jpg', 'Vintage-inspired sunglasses with premium finish.', 'Unisex', 'Tortoise', 'Medium'),
('Carrera Oversized Sunglasses', 'Carrera', 'SUNGLASS', 7799.00, 35, 'https://example.com/carrera_oversized.jpg', 'Bold oversized sunglasses with unique frame.', 'Unisex', 'Black', 'Large'),
-- Bags
('Da Milano Leather Handbag', 'Da Milano', 'BAG', 11499.00, 45, 'https://example.com/damilano_handbag.jpg', 'Premium leather handbag for stylish women.', 'Female', 'Tan', 'Medium'),
('Baggit Tote Bag', 'Baggit', 'BAG', 3599.00, 55, 'https://example.com/baggit_tote.jpg', 'Spacious tote bag for everyday use.', 'Female', 'Blue', 'Large'),
('Lavie Sling Bag', 'Lavie', 'BAG', 2499.00, 60, 'https://example.com/lavie_sling.jpg', 'Trendy sling bag with adjustable strap.', 'Female', 'Red', 'Small'),
('Skybags Backpack', 'Skybags', 'BAG', 2999.00, 70, 'https://example.com/skybags_backpack.jpg', 'Durable backpack with multiple compartments.', 'Unisex', 'Black', 'Large'),
('American Tourister Trolley Bag', 'American Tourister', 'BAG', 6799.00, 40, 'https://example.com/at_trolley.jpg', 'Spacious trolley bag with 360-degree wheels.', 'Unisex', 'Grey', 'Extra Large'),
('Caprese Shoulder Bag', 'Caprese', 'BAG', 4199.00, 50, 'https://example.com/caprese_shoulder.jpg', 'Elegant shoulder bag for formal occasions.', 'Female', 'Beige', 'Medium'),
('Wildcraft Hiking Backpack', 'Wildcraft', 'BAG', 5499.00, 35, 'https://example.com/wildcraft_hiking.jpg', 'Heavy-duty backpack for trekking & hiking.', 'Unisex', 'Green', 'Extra Large'),
('Allen Solly Laptop Bag', 'Allen Solly', 'BAG', 4999.00, 30, 'https://example.com/allensolly_laptop.jpg', 'Stylish laptop bag with padded compartments.', 'Unisex', 'Brown', 'Large'),
-- *Watches*
('Titan Edge Ceramic', 'Titan', 'WATCH', 17999.00, 20, 'https://staticimg.titan.co.in/Titan/Catalog/1696NC01_1.jpg', 'Ultra-thin ceramic watch with sapphire crystal.', 'Unisex', 'Black', 'Standard'),
('Titan Octane Chronograph', 'Titan', 'WATCH', 9499.00, 25, 'https://staticimg.titan.co.in/Titan/Catalog/90109KL01_1.jpg', 'Sporty chronograph with leather strap.', 'Male', 'Blue', 'Standard'),
('Fastrack Digital Sports Watch', 'Fastrack', 'WATCH', 5999.00, 30, 'https://staticimg.titan.co.in/Fastrack/Catalog/38045PP01_1.jpg', 'Water-resistant digital sports watch.', 'Unisex', 'Black', 'Standard'),
('Fastrack Reflex Smartwatch', 'Fastrack', 'WATCH', 4299.00, 40, 'https://staticimg.titan.co.in/Fastrack/Catalog/38051PP02_1.jpg', 'Stylish fitness smartwatch with step tracker.', 'Unisex', 'Red', 'Standard'),
('Casio Edifice Chronograph', 'Casio India', 'WATCH', 13999.00, 15, 'https://casioindiashop.com/media/catalog/product/cache/1/image/476x/602f0fa2c1f0d1ba5e241f914e856ff9/e/q/eqs-930db-1avdf-2.jpg', 'Premium chronograph watch with solar charging.', 'Male', 'Silver', 'Standard'),
('Casio Vintage Gold Digital', 'Casio India', 'WATCH', 4999.00, 30,'https://casioindiashop.com/media/catalog/product/cache/1/image/476x/602f0fa2c1f0d1ba5e241f914e856ff9/a/1/a168wg-9wdf-1.jpg', 'Retro-style gold digital watch.', 'Unisex', 'Gold', 'Standard'),
('Police Men’s Chronograph', 'Police Lifestyle', 'WATCH', 10599.00, 18, 'https://staticimg.titan.co.in/Police/Catalog/P15896JS02_1.jpg', 'Bold chronograph with metal case.', 'Male', 'Black', 'Standard'),
('Timex Expedition Analog-Digital', 'Timex India', 'WATCH', 6999.00, 22, 'https://cdn.timexindia.com/media/catalog/product/T/4/T49905-N1.jpg', 'Durable adventure watch with dual display.', 'Male', 'Brown', 'Standard'),
-- *Sunglasses*
('Ray-Ban Clubmaster', 'Ray-Ban India', 'SUNGLASS', 8799.00, 50, 'https://www.ray-ban.com/next/image?url=https%3A%2F%2Fimages.ray-ban.com%2Fis%2Fimage%2FRayBan%2F805289602070_001.png&w=1080&q=75', 'Classic Clubmaster sunglasses with acetate frame.', 'Unisex', 'Black', 'Medium'),
('Maui Jim Polarized Aviator', 'Maui Jim', 'SUNGLASS', 13999.00, 25, 'https://cdn11.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/2125/15169/maui-jim-castles-sunglasses-ht746-15j__70783.1692672725.jpg', 'Premium aviator with polarized lenses.', 'Unisex', 'Gunmetal', 'Large'),
('Vogue Oversized Sunglasses', 'Vogue Eyewear', 'SUNGLASS', 6499.00, 35, 'https://images.vogue-eyewear.com/is/image/Vogue/805289603589__001.png', 'Oversized sunglasses with gradient lenses.', 'Female', 'Brown', 'Large'),
('Oakley Prizm Sports Shades', 'Oakley India', 'SUNGLASS', 11599.00, 30, 'https://www.oakley.com/dw/image/v2/BJCT_PRD/on/demandware.static/-/Sites-masterCatalog_Oakley/default/dw0570e35a/products/sunglasses/oo9406-940606/01.jpg', 'High-contrast Prizm lenses for enhanced vision.', 'Unisex', 'White', 'Medium'),
('Persol Folding Sunglasses', 'Persol', 'SUNGLASS', 10999.00, 20, 'https://www.persol.com/dw/image/v2/AAVW_PRD/on/demandware.static/-/Sites-persol-master-catalog/default/dw92343e5c/large/8053672027279_shad_qt.png?sw=900&sh=900&sm=fit', 'Iconic foldable sunglasses with vintage appeal.', 'Unisex', 'Tortoise', 'Medium'),
-- *Bags*
('Da Milano Quilted Leather Bag', 'Da Milano', 'BAG', 12499.00, 30,'https://www.damilano.com/cdn/shop/products/NudeQuiltedDuffleBag_2_1024x.jpg', 'Elegant leather handbag with quilted design.', 'Female', 'Nude', 'Medium'),
('Baggit Women’s Shoulder Bag', 'Baggit', 'BAG', 2999.00, 50,'https://cdn.baggit.com/media/catalog/product/cache/b02b2e2322e53dd5d03d67dfe623b6bd/m/w/mwde0007nblue2.jpg', 'Trendy shoulder bag with spacious compartments.', 'Female', 'Beige', 'Medium'),
('Lavie Croco Textured Tote', 'Lavie', 'BAG', 3299.00, 45,'https://lavieworld.com/cdn/shop/files/BLCO759004N4_1_700x.jpg', 'Sophisticated tote with crocodile texture.', 'Female', 'Black', 'Large'),
('Skybags Laptop Backpack', 'Skybags', 'BAG', 3599.00, 60,'https://www.skybags.co.in/cdn/shop/products/LPBP04SBLU.jpg', 'Ergonomic backpack with laptop compartment.', 'Unisex', 'Navy Blue', 'Large'),
('Caprese Satchel Bag', 'Caprese', 'BAG', 5499.00, 25, 'https://capresebags.com/cdn/shop/products/1_1c28717e-4bc5-4e35-8921-6ea012f7326e_2048x.jpg', 'Chic satchel bag with gold-tone details.', 'Female', 'Maroon', 'Medium'),
('Wildcraft Duffle Bag', 'Wildcraft', 'BAG', 3999.00, 35, 'https://www.wildcraft.com/media/catalog/product/cache/cf26c635f7311a35e3cf88cd87e5788a/w/d/wduffelg37black_1_1.jpg', 'Spacious duffle bag for travel and gym.', 'Unisex', 'Black', 'Large'),
('Esbeda Chain Sling Bag', 'Esbeda', 'BAG', 2899.00, 30, 'https://cdn.esbeda.com/products/HLB02401BLTAN_1.jpg', 'Stylish sling bag with chain strap.', 'Female', 'Tan', 'Small'),
('Allen Solly Casual Backpack', 'Allen Solly', 'BAG', 4999.00, 20, 'https://cdn.allensolly.com/media/catalog/product/a/l/allensolly-asbggr1011a-green-1023855-19.jpg', 'Trendy casual backpack for daily use.', 'Unisex', 'Green', 'Large'),
('Titan Workwear Analog Watch', 'Titan', 'WATCH', 7599.00, 20, 'https://staticimg.titan.co.in/Titan/Catalog/1805NM01_1.jpg', 'Sophisticated workwear watch with metal strap.', 'Male', 'Black', 'Standard'),
('Titan Raga Viva Women’s Watch', 'Titan', 'WATCH', 8199.00, 18, 'https://staticimg.titan.co.in/Titan/Catalog/2579WM01_1.jpg', 'Elegant rose gold watch for women.', 'Female', 'Rose Gold', 'Standard'),
('Fastrack Tees Analog Watch', 'Fastrack', 'WATCH', 2599.00, 40, 'https://staticimg.titan.co.in/Fastrack/Catalog/38052PP01_1.jpg', 'Trendy casual watch for everyday wear.', 'Unisex', 'Blue', 'Standard'),
('Casio G-Shock Sports Watch', 'Casio India', 'WATCH', 11499.00, 15,'https://casioindiashop.com/media/catalog/product/cache/1/image/476x/602f0fa2c1f0d1ba5e241f914e856ff9/g/a/ga-2100-1a1dr-2.jpg', 'Rugged G-Shock watch with shock resistance.', 'Male', 'Black', 'Standard'),
('Michael Kors Silver Dial Watch', 'Michael Kors', 'WATCH', 13299.00, 10, 'https://www.michaelkors.global/dw/image/v2/BFGD_PRD/on/demandware.static/-/Sites-mk-master-catalog/default/dw1db6b967/images/D_1/401843103_1.jpg?sw=800&sh=800', 'Luxurious silver dial watch with link bracelet.', 'Female', 'Silver', 'Standard'),
-- watches
('Ray-Ban Wayfarer Classic', 'Ray-Ban India', 'SUNGLASS', 9299.00, 40,  'https://www.ray-ban.com/next/image?url=https%3A%2F%2Fimages.ray-ban.com%2Fis%2Fimage%2FRayBan%2F805289126581_001.png&w=1080&q=75', 'Iconic Wayfarer sunglasses with UV protection.', 'Unisex', 'Black', 'Medium'),
('Oakley Radar EV Path', 'Oakley India', 'SUNGLASS', 11999.00, 25, 'https://www.oakley.com/dw/image/v2/BJCT_PRD/on/demandware.static/-/Sites-masterCatalog_Oakley/default/dw8c235edf/products/sunglasses/oo9208-920855/01.jpg', 'High-performance sports sunglasses.', 'Unisex', 'Red', 'Large'),
('Maui Jim Ho’okipa Sunglasses', 'Maui Jim', 'SUNGLASS', 15499.00, 12, 'https://cdn11.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/1103/7813/maui-jim-hookipa-sunglasses-h407-02__00257.1621371216.jpg', 'Lightweight rimless polarized sunglasses.', 'Unisex', 'Brown', 'Medium'),
('Vogue Cat Eye Sunglasses', 'Vogue Eyewear', 'SUNGLASS', 6699.00, 20, 'https://images.vogue-eyewear.com/is/image/Vogue/8053672937972__001.png', 'Elegant cat-eye sunglasses for women.', 'Female', 'Pink', 'Small'),
('Carrera Square Frame Sunglasses', 'Carrera', 'SUNGLASS', 8199.00, 22, 'https://cdn.safilo.com/carrera/products/CARRERA_8031S_807UC_001.jpg', 'Sporty square frame sunglasses.', 'Male', 'Black', 'Large'),
-- *Bags*
('Da Milano Executive Laptop Bag', 'Da Milano', 'BAG', 14999.00, 12, 'https://www.damilano.com/cdn/shop/products/LeatherLaptopBagDarkBrown.jpg', 'Premium leather laptop bag for professionals.', 'Unisex', 'Dark Brown', 'Medium'),
('Baggit Vegan Leather Tote', 'Baggit', 'BAG', 3199.00, 40,  'https://cdn.baggit.com/media/catalog/product/cache/b02b2e2322e53dd5d03d67dfe623b6bd/l/e/lehboy0008tan2.jpg', 'Stylish tote made from vegan leather.', 'Female', 'Tan', 'Large'),
('Lavie Twin Handle Handbag', 'Lavie', 'BAG', 3999.00, 30, 'https://lavieworld.com/cdn/shop/files/BLCO794001N4_1_700x.jpg', 'Modern twin-handle handbag with zipper closure.', 'Female', 'Red', 'Medium'),
('Skybags College Backpack', 'Skybags', 'BAG', 2499.00, 50, 'https://www.skybags.co.in/cdn/shop/products/SGBP06SBLU1.jpg', 'Durable college backpack with padded straps.', 'Unisex', 'Blue', 'Large'),
('American Tourister Trolley Bag', 'American Tourister', 'BAG', 5999.00, 15, 'https://cdn.american-tourister.com/media/catalog/product/cache/1/image/400x/040ec09b1e35df139433887a97daa66f/a/m/american-tourister-luggage-bag.jpg', 'Spacious trolley bag with TSA lock.', 'Unisex', 'Grey', 'XL'),
('Wildcraft Hiker Rucksack', 'Wildcraft', 'BAG', 4799.00, 20,  'https://www.wildcraft.com/media/catalog/product/cache/2c4e0855e1fb501c14d7b63a33ad8a85/w/r/wrainerstprbag.jpg', 'Rugged hiking rucksack with water resistance.', 'Unisex', 'Olive Green', 'Large'),
('Allen Solly Leather Sling Bag', 'Allen Solly', 'BAG', 2799.00, 18, 'https://cdn.allensolly.com/media/catalog/product/a/l/allensolly-bags.jpg', 'Compact sling bag with premium finish.', 'Male', 'Brown', 'Small'),
-- *More Watches*
('Seiko 5 Automatic Watch', 'Seiko India', 'WATCH', 23999.00, 12, 'https://seikowatches.com/img/seiko-5-automatic.jpg', 'Classic automatic watch with day-date display.', 'Male', 'Silver', 'Standard'),
('Citizen Eco-Drive Titanium', 'Citizen Watches', 'WATCH', 19999.00, 10,  'https://www.citizenwatch.com/media/catalog/product/cache/1/image/400x400/040ec09b1e35df139433887a97daa66f/t/i/titanium-watch.jpg', 'Titanium body with solar-powered Eco-Drive.', 'Male', 'Grey', 'Standard'),
('Daniel Wellington Petite Melrose', 'Daniel Wellington', 'WATCH', 9999.00, 18,  'https://cdn.shopify.com/s/files/1/0223/7933/9342/products/dw-watch-rose-gold_1.jpg', 'Minimalist rose gold watch for women.', 'Female', 'Rose Gold', 'Small'),
('Sonata Budget Digital Watch', 'Sonata', 'WATCH', 2199.00, 40,  'https://sonataindia.com/media/catalog/product/s/o/sonata-digital-watch.jpg', 'Affordable digital watch with stopwatch.', 'Unisex', 'Black', 'Standard'),
('Police Skyline Chronograph', 'Police Lifestyle', 'WATCH', 10999.00, 10, 'https://cdn.police.com/media/catalog/product/p/o/police-chronograph-watch.jpg', 'Edgy chronograph watch with bold numerals.', 'Male', 'Black', 'Standard'),
-- *Watches*
('Timex Expedition Digital Watch', 'Timex India', 'WATCH', 5499.00, 25, 'https://timexindia.com/media/catalog/product/t/i/timex-expedition-watch.jpg', 'Rugged outdoor digital watch with backlight.', 'Male', 'Black', 'Standard'),
('Casio Edifice Chronograph', 'Casio India', 'WATCH', 13499.00, 12, 'https://casioindiashop.com/media/catalog/product/cache/1/image/476x/casio-edifice-watch.jpg', 'Sleek chronograph with tachymeter bezel.', 'Male', 'Blue', 'Standard'),
('Titan Edge Ultra Slim Watch', 'Titan', 'WATCH', 16999.00, 8,  'https://staticimg.titan.co.in/Titan/Catalog/1595SL03_1.jpg', 'Ultra-thin sophisticated design with leather strap.', 'Male', 'Brown', 'Standard'),
('Daniel Wellington Classic Sheffield', 'Daniel Wellington', 'WATCH', 9999.00, 14,  'https://cdn.shopify.com/s/files/1/0223/7933/9342/products/dw-classic-sheffield.jpg', 'Minimalist black leather strap watch.', 'Unisex', 'Black', 'Standard'),
('Michael Kors Parker Rose Gold Watch', 'Michael Kors', 'WATCH', 14299.00, 9,  'https://www.michaelkors.global/dw/image/v2/BFGD_PRD/on/demandware.static/-/Sites-mk-master-catalog/default/dwmk.jpg', 'Elegant watch with crystal embellishments.', 'Female', 'Rose Gold', 'Standard'),
-- *Sunglasses*
('Ray-Ban Aviator Classic', 'Ray-Ban India', 'SUNGLASS', 10199.00, 30, 'https://www.ray-ban.com/_next/image?url=https%3A%2F%2Fimages.ray-ban.com%2Fis%2Fimage%2FRayBan%2Faviator-classic.jpg', 'Classic aviator sunglasses with UV protection.', 'Unisex', 'Gold', 'Large'),
('Oakley Holbrook Prizm Lens', 'Oakley India', 'SUNGLASS', 11299.00, 18, 'https://www.oakley.com/dw/image/v2/BJCT_PRD/on/demandware.static/-/Sites-masterCatalog_Oakley/default/dw76d.jpg', 'Polarized lenses with enhanced color contrast.', 'Male', 'Black', 'Medium'),
('Maui Jim Peahi Sunglasses', 'Maui Jim', 'SUNGLASS', 16599.00, 10, 'https://cdn11.bigcommerce.com/s-0kvv9/maui-jim-peahi.jpg', 'Wraparound polarized sunglasses.', 'Unisex', 'Tortoise', 'Large'),
('Vogue Oversized Round Sunglasses', 'Vogue Eyewear', 'SUNGLASS', 7299.00, 15,'https://images.vogue-eyewear.com/is/image/Vogue/8053672003711.jpg', 'Fashionable oversized round sunglasses.', 'Female', 'Pink', 'Large'),
('Carrera Champion Aviator Sunglasses', 'Carrera', 'SUNGLASS', 8699.00, 20,'https://cdn.safilo.com/carrera/products/CARRERA_CHAMPION.jpg', 'Sporty aviator sunglasses with bold frame.', 'Male', 'Gunmetal', 'Large'),
-- *Bags*
('Da Milano Leather Messenger Bag', 'Da Milano', 'BAG', 15999.00, 10, 'https://www.damilano.com/cdn/shop/products/leather-messenger.jpg', 'High-end Italian leather messenger bag.', 'Unisex', 'Dark Brown', 'Medium'),
('Baggit Convertible Backpack', 'Baggit', 'BAG', 2899.00, 30,'https://cdn.baggit.com/media/catalog/product/baggit-backpack.jpg', 'Convertible backpack with multiple compartments.', 'Female', 'Grey', 'Medium'),
('Lavie Embossed Sling Bag', 'Lavie', 'BAG', 3399.00, 25,'https://lavieworld.com/cdn/shop/files/lavie-sling-bag.jpg', 'Trendy embossed sling bag with chain strap.', 'Female', 'Beige', 'Small'),
('Skybags Laptop Backpack', 'Skybags', 'BAG', 2799.00, 50,'https://www.skybags.co.in/cdn/shop/products/skybags-laptop.jpg', 'Padded laptop backpack with water resistance.', 'Unisex', 'Black', 'Medium'),
('American Tourister Spinner Trolley', 'American Tourister', 'BAG', 6499.00, 20,'https://cdn.american-tourister.com/media/catalog/product/trolley-spinner.jpg', 'Lightweight spinner trolley with hard shell.', 'Unisex', 'Navy Blue', 'XL'),
('Wildcraft Hiking Backpack', 'Wildcraft', 'BAG', 5099.00, 15,'https://www.wildcraft.com/media/catalog/product/hiking-backpack.jpg', 'Spacious hiking backpack with waterproof cover.', 'Unisex', 'Olive Green', 'Large'),
('Allen Solly Urban Crossbody Bag', 'Allen Solly', 'BAG', 2599.00, 18,'https://cdn.allensolly.com/media/catalog/product/allen-solly-crossbody.jpg', 'Compact crossbody bag for daily use.', 'Male', 'Tan', 'Small'),
-- *More Watches*
('Sonata Digital Square Face Watch', 'Sonata', 'WATCH', 2499.00, 35,'https://sonataindia.com/media/catalog/product/sonata-square-watch.jpg', 'Retro digital square-faced watch.', 'Unisex', 'Silver', 'Standard'),
('Seiko Presage Automatic', 'Seiko India', 'WATCH', 28999.00, 8,'https://seikowatches.com/img/seiko-presage.jpg', 'Luxury automatic watch with enamel dial.', 'Male', 'Blue', 'Standard'),
('Citizen Chrono Sports Watch', 'Citizen Watches', 'WATCH', 18999.00, 9,'https://www.citizenwatch.com/media/catalog/product/chrono-sports-watch.jpg', 'Advanced chronograph watch with tachymeter.', 'Male', 'Black', 'Standard'),
('Police Nightfall Quartz Watch', 'Police Lifestyle', 'WATCH', 11999.00, 10,'https://cdn.police.com/media/catalog/product/police-nightfall.jpg', 'Bold quartz watch with sporty design.', 'Male', 'Gunmetal', 'Standard');



INSERT INTO Promotion (Promotion_ID,Product_ID, Name, Discount_Percentage, Start_Date, End_Date) VALUES
(1,1, 'Summer Sale', 15.00, '2024-06-01', '2024-06-30'),
(2,2, 'Independence Day Offer', 20.00, '2024-08-10', '2024-08-20'),
(3,3, 'Diwali Special', 25.00, '2024-10-15', '2024-11-05'),
(4,4, 'New Year Bonanza', 30.00, '2024-12-25', '2025-01-05'),
(5,5, 'Valentine’s Deal', 18.00, '2025-02-01', '2025-02-14'),
(6,6, 'Holi Discount', 22.00, '2025-03-15', '2025-03-30'),
(7,7, 'Monsoon Sale', 10.00, '2024-07-01', '2024-07-20'),
(8,8, 'Back to School', 12.00, '2024-06-15', '2024-06-30'),
(9,9, 'Raksha Bandhan Offer', 20.00, '2024-08-01', '2024-08-10'),
(10,10, 'Ganesh Chaturthi Special', 17.00, '2024-09-01', '2024-09-10'),
(11,11, 'Navratri Discount', 28.00, '2024-10-01', '2024-10-10'),
(12,12, 'Dussehra Festive Offer', 25.00, '2024-10-15', '2024-10-25'),
(13,13, 'Bhai Dooj Offer', 15.00, '2024-11-10', '2024-11-15'),
(14,14, 'Christmas Special', 30.00, '2024-12-15', '2024-12-31'),
(15,15, 'Republic Day Sale', 20.00, '2025-01-20', '2025-01-26'),
(16,16, 'Spring Clearance', 35.00, '2025-03-01', '2025-03-10'),
(17,17, 'End of Season Sale', 50.00, '2025-04-01', '2025-04-15'),
(18,18, 'Eid Festival Discount', 22.00, '2025-05-01', '2025-05-10'),
(19,19, 'Father’s Day Special', 18.00, '2025-06-10', '2025-06-20'),
(20,20, 'Independence Week Sale', 25.00, '2025-08-10', '2025-08-20'),
(21,21, 'Navratri Grand Sale', 27.00, '2025-10-01', '2025-10-10'),
(22,22, 'Diwali Dhamaka', 40.00, '2025-10-25', '2025-11-05'),
(23,23, 'Christmas Mega Sale', 45.00, '2025-12-10', '2025-12-31'),
(24,24, 'New Year Flash Sale', 50.00, '2025-12-31', '2026-01-02'),
(25,25, 'Super Saver Offer', 33.00, '2026-02-01', '2026-02-10'),
(26,26, 'Maha Shivratri Offer', 15.00, '2026-03-05', '2026-03-10'),
(27,27, 'Women’s Day Deal', 20.00, '2026-03-08', '2026-03-15'),
(28,28, 'Ugadi Festival Sale', 18.00, '2026-04-01', '2026-04-07'),
(29,29, 'Summer Clearance', 40.00, '2026-05-01', '2026-05-15'),
(30,30, 'Monsoon Bonanza', 12.00, '2026-06-15', '2026-06-30');


INSERT INTO Review (Product_ID, Customer_ID, Rating, Comment) VALUES
(1, 3, 5, 'Excellent product! Highly recommended.'),
(2, 7, 4, 'Good quality but a bit expensive.'),
(3, 12, 3, 'Average product, expected better.'),
(4, 20, 5, 'Loved it! Will buy again.'),
(5, 9, 2, 'Not satisfied with the quality.'),
(6, 15, 4, 'Nice product, meets expectations.'),
(7, 27, 5, 'Great value for money.'),
(8, 33, 1, 'Very poor quality, disappointed.'),
(9, 8, 4, 'Looks stylish and durable.'),
(10, 18, 5, 'Absolutely fantastic! Worth the price.'),
(11, 22, 3, 'It is okay, but not the best.'),
(12, 29, 2, 'Quality could be improved.'),
(13, 6, 5, 'Loved the design, very comfortable.'),
(14, 14, 4, 'Nice and trendy.'),
(15, 25, 5, 'Superb product, highly recommend.'),
(16, 10, 1, 'Not as described, disappointed.'),
(17, 38, 4, 'Looks great and works well.'),
(18, 45, 3, 'Decent, but not amazing.'),
(19, 50, 5, 'Perfect for daily use.'),
(20, 2, 2, 'Expected better quality.'),
(21, 17, 4, 'Nice color and finish.'),
(22, 31, 5, 'One of the best purchases I have made.'),
(23, 41, 3, 'It is okay, but not exceptional.'),
(24, 19, 5, 'Perfect! Worth every penny.'),
(25, 36, 2, 'Not up to the mark.'),
(26, 48, 4, 'Great design, good material.'),
(27, 11, 5, 'Loved the craftsmanship.'),
(28, 24, 3, 'An average product.'),
(29, 32, 5, 'Highly durable and stylish.'),
(30, 13, 2, 'Not worth the price.'),
(31, 21, 4, 'Comfortable and well-made.'),
(32, 30, 1, 'Poor stitching and material.'),
(33, 5, 5, 'Premium quality, totally worth it.'),
(34, 16, 3, 'Satisfactory but can be better.'),
(35, 35, 4, 'Decent purchase.'),
(36, 42, 5, 'Looks amazing and feels premium.'),
(37, 47, 2, 'Did not last long.'),
(38, 39, 5, 'Very happy with the purchase.'),
(39, 4, 1, 'Terrible experience.'),
(40, 26, 3, 'Just okay, nothing special.'),
(41, 28, 4, 'Met my expectations.'),
(42, 34, 5, 'Super stylish and durable.'),
(43, 49, 3, 'Could have been better.'),
(44, 40, 5, 'Loved it! Absolutely perfect.'),
(45, 23, 2, 'Disappointed with the purchase.'),
(46, 44, 4, 'Looks elegant, happy with it.'),
(47, 37, 3, 'Fair enough for the price.'),
(48, 46, 5, 'Very high quality and beautiful.'),
(49, 1, 2, 'Not satisfied, quality issues.'),
(50, 9, 5, 'Perfect for gifting, loved it.');


INSERT INTO Cart (Product_ID, Customer_ID, Quantity, Price)
SELECT 
    p.Product_ID,
    c.Customer_ID,
    FLOOR(RAND() * 5) + 1 AS Quantity, -- Random quantity between 1 and 5
    p.Price
FROM 
    (SELECT Product_ID, Price FROM Product ORDER BY RAND() LIMIT 40) p
JOIN 
    (SELECT Customer_ID FROM Customer ORDER BY RAND() LIMIT 40) c
ON 1=1;

-- SELECT * FROM CART;


INSERT INTO Payment (Customer_ID, Amount, Payment_Method, Payment_Status) VALUES
(12, 15420.50, 'Credit Card', 'Completed'),
(45, 28755.75, 'UPI', 'Pending'),
(30, 9999.99, 'Net Banking', 'Completed'),
(23, 13450.25, 'Debit Card', 'Failed'),
(50, 26000.00, 'Credit Card', 'Completed'),
(37, 15040.50, 'UPI', 'Completed'),
(14, 32450.00, 'Net Banking', 'Pending'),
(56, 24700.75, 'Debit Card', 'Completed'),
(3, 5200.25, 'UPI', 'Failed'),
(25, 13500.00, 'Credit Card', 'Completed'),
(41, 24500.50, 'Net Banking', 'Pending'),
(29, 23900.99, 'Debit Card', 'Completed'),
(48, 15500.75, 'UPI', 'Completed'),
(36, 24800.00, 'Credit Card', 'Failed'),
(7, 6200.50, 'Net Banking', 'Completed'),
(34, 22200.75, 'Debit Card', 'Pending'),
(53, 24100.25, 'UPI', 'Completed'),
(16, 12950.50, 'Credit Card', 'Failed'),
(42, 25200.00, 'Net Banking', 'Completed'),
(25, 18900.75, 'Debit Card', 'Completed'),
(60, 30000.99, 'UPI', 'Pending'),
(5, 14280.25, 'Credit Card', 'Completed'),
(32, 21500.50, 'Net Banking', 'Failed'),
(39, 23899.99, 'Debit Card', 'Completed'),
(18, 9600.75, 'UPI', 'Pending'),
(58, 22750.25, 'Credit Card', 'Completed'),
(41, 12000.50, 'Net Banking', 'Failed'),
(9, 24975.00, 'Debit Card', 'Completed'),
(33, 14300.75, 'UPI', 'Completed'),
(46, 23750.25, 'Credit Card', 'Pending'),
(21, 26800.50, 'Net Banking', 'Completed'),
(55, 19999.99, 'Debit Card', 'Completed'),
(11, 24100.75, 'UPI', 'Failed'),
(38, 14900.50, 'Credit Card', 'Completed'),
(30, 23550.00, 'Net Banking', 'Pending'),
(50, 22999.99, 'Debit Card', 'Completed'),
(42, 19000.25, 'UPI', 'Completed'),
(27, 24150.50, 'Credit Card', 'Failed'),
(55, 25000.75, 'Net Banking', 'Completed'),
(27, 23400.25, 'Debit Card', 'Pending');


INSERT INTO Order_History (Customer_ID, Payment_ID, Grand_Total, Address, Order_Status, Date_of_Ordering) VALUES
(12, 1, 15420.50, '77, Gachibowli, Hyderabad, Telangana', 'Shipped', '2024-12-05 14:23:00'),
(30, 3, 9999.99, '45, FC Road, Pune, Maharashtra', 'Delivered', '2024-12-07 09:15:00'),
(50, 5, 26000.00, '37, Gomti Nagar, Lucknow, Uttar Pradesh', 'Pending', '2024-12-08 16:45:00'),
(37, 6, 15040.50, '67, Gomti Nagar, Lucknow, Uttar Pradesh', 'Shipped', '2024-12-09 11:30:00'),
(56, 8, 24700.75, '61, Indiranagar, Bangalore, Karnataka', 'Delivered', '2024-12-10 13:10:00'),
(25, 10, 13500.00, '85, Ballygunge, Kolkata, West Bengal', 'Delivered', '2024-12-12 17:55:00'),
(29, 12, 23900.99, '14, Jayanagar, Bangalore, Karnataka', 'Shipped', '2024-12-14 08:40:00'),
(48, 14, 15500.75, '98, Ballygunge, Kolkata, West Bengal', 'Pending', '2024-12-15 19:20:00'),
(7, 15, 6200.50, '78, Salt Lake, Kolkata, West Bengal', 'Shipped', '2024-12-16 14:10:00'),
(53, 17, 24100.25, '83, Gomti Nagar, Lucknow, Uttar Pradesh', 'Delivered', '2024-12-18 12:35:00'),
(42, 19, 25200.00, '54, Boring Road, Patna, Bihar', 'Shipped', '2024-12-20 10:05:00'),
(25, 20, 18900.75, '85, Ballygunge, Kolkata, West Bengal', 'Delivered', '2024-12-22 18:25:00'),
(5, 22, 14280.25, '2, Banjara Hills, Hyderabad, Telangana', 'Shipped', '2024-12-24 20:50:00'),
(39, 24, 23899.99, '21, Salt Lake, Kolkata, West Bengal', 'Delivered', '2024-12-25 11:15:00'),
(58, 26, 22750.25, '43, Salt Lake, Kolkata, West Bengal', 'Shipped', '2024-12-27 15:40:00'),
(9, 28, 24975.00, '23, Connaught Place, New Delhi, Delhi', 'Shipped', '2024-12-29 09:55:00'),
(33, 29, 14300.75, '56, Civil Lines, Jaipur, Rajasthan', 'Delivered', '2024-12-30 16:30:00'),
(21, 31, 26800.50, '56, Andheri West, Mumbai, Maharashtra', 'Shipped', '2025-01-02 13:20:00'),
(55, 32, 19999.99, '19, Juhu, Mumbai, Maharashtra', 'Delivered', '2025-01-04 08:45:00'),
(38, 34, 14900.50, '90, Connaught Place, New Delhi, Delhi', 'Shipped', '2025-01-05 14:05:00'),
(50, 36, 22999.99, '37, Gomti Nagar, Lucknow, Uttar Pradesh', 'Shipped', '2025-01-07 18:15:00'),
(42, 37, 19000.25, '72, Alkapuri, Vadodara, Gujarat', 'Shipped', '2025-01-08 12:50:00'),
(55, 39, 25000.75, '19, Juhu, Mumbai, Maharashtra', 'Delivered', '2025-01-10 09:30:00');


INSERT INTO All_Orders (Order_ID, Product_ID, Price, Quantity) VALUES
-- Order ID 1
(1, 1, 5999.00, 1),  -- Titan Analog Watch
(1, 10, 8799.00, 1), -- Ray-Ban Aviator

-- Order ID 2
(2, 3, 4299.00, 1),  -- Fastrack Sporty Watch
(2, 15, 7799.00, 1), -- Carrera Oversized Sunglasses

-- Order ID 3
(3, 8, 19999.00, 1), -- Seiko Premier Automatic
(3, 18, 3599.00, 2), -- Baggit Tote Bag

-- Order ID 4
(4, 5, 10999.00, 1), -- Casio G-Shock
(4, 19, 2499.00, 2), -- Lavie Sling Bag

-- Order ID 5
(5, 9, 15499.00, 1), -- Michael Kors Rose Gold Watch
(5, 20, 2999.00, 3), -- Skybags Backpack

-- Order ID 6
(6, 13, 3499.00, 2), -- Vincent Chase Polarized Sunglasses
(6, 21, 6799.00, 1), -- American Tourister Trolley Bag

-- Order ID 7
(7, 7, 4999.00, 2), -- Timex Expedition
(7, 14, 10299.00, 1), -- Oakley Sports Sunglasses
(7, 22, 4199.00, 1), -- Caprese Shoulder Bag

-- Order ID 8
(8, 11, 7299.00, 1), -- Ray-Ban Wayfarer
(8, 23, 5499.00, 1), -- Wildcraft Hiking Backpack
(8, 2, 7499.00, 1),  -- Titan Raga Women's Watch

-- Order ID 9
(9, 12, 3899.00, 1),  -- Fastrack Leather Strap Watch
(9, 24, 4999.00, 1),  -- Allen Solly Laptop Bag

-- Order ID 10
(10, 4, 3899.00, 2), -- Fastrack Leather Strap Watch
(10, 16, 12499.00, 1), -- Maui Jim Classic Sunglasses
(10, 25, 4199.00, 1), -- Caprese Shoulder Bag

-- Additional orders following the same pattern...
(11, 6, 8499.00, 2),  -- Casio Sheen Women's Watch
(11, 17, 11499.00, 1), -- Da Milano Leather Handbag

(12, 8, 19999.00, 1), -- Seiko Premier Automatic

(13, 9, 15499.00, 1),  -- Michael Kors Rose Gold Watch

(14, 10, 8799.00, 2), -- Ray-Ban Aviator
(14, 20, 2999.00, 2), -- Skybags Backpack

(15, 11, 7299.00, 2), -- Ray-Ban Wayfarer
(15, 21, 6799.00, 1), -- American Tourister Trolley Bag

(16, 12, 3899.00, 2),  -- Fastrack Leather Strap Watch
(16, 22, 4199.00, 4), -- Caprese Shoulder Bag

(17, 13, 3499.00, 2), -- Vincent Chase Polarized Sunglasses
(17, 23, 5499.00, 1), -- Wildcraft Hiking Backpack

(18, 14, 10299.00, 2), -- Oakley Sports Sunglasses
(18, 24, 4999.00, 1), -- Allen Solly Laptop Bag

(19, 15, 7799.00, 2), -- Carrera Oversized Sunglasses
(19, 25, 4199.00, 1), -- Caprese Shoulder Bag

(20, 16, 12499.00, 1), -- Maui Jim Classic Sunglasses
(20, 1, 5999.00, 1),  -- Titan Analog Watch

(21, 17, 11499.00, 1), -- Da Milano Leather Handbag
(21, 2, 7499.00, 1),  -- Titan Raga Women's Watch
(21, 3, 4299.00, 1),  -- Fastrack Sporty Watch

(22, 18, 3599.00, 3), -- Baggit Tote Bag
(22, 4, 3899.00, 2),  -- Fastrack Leather Strap Watch

(23, 19, 2499.00, 4), -- Lavie Sling Bag
(23, 5, 10999.00, 1); -- Casio G-Shock





