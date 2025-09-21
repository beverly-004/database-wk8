
-- Create database
CREATE DATABASE clinic_db;
USE clinic_db;

-- Departments table
CREATE TABLE Departments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL
);

-- Patients table
CREATE TABLE Patients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    date_of_birth DATE
);

-- Doctors table
CREATE TABLE Doctors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    specialization VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(id) ON DELETE SET NULL
);

-- Appointments table
CREATE TABLE Appointments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    reason VARCHAR(255),
    FOREIGN KEY (patient_id) REFERENCES Patients(id) ON DELETE CASCADE,
    FOREIGN KEY (doctor_id) REFERENCES Doctors(id) ON DELETE CASCADE
);

-- Sample data for Departments
INSERT INTO Departments (name) VALUES 
('Cardiology'),
('Neurology'),
('Pediatrics');

-- Sample data for Doctors
INSERT INTO Doctors (name, email, specialization, department_id) VALUES
('Dr. Alice Smith', 'alice.smith@clinic.com', 'Cardiologist', 1),
('Dr. John Doe', 'john.doe@clinic.com', 'Neurologist', 2),
('Dr. Mary Johnson', 'mary.johnson@clinic.com', 'Pediatrician', 3);

-- Sample data for Patients
INSERT INTO Patients (name, email, phone, date_of_birth) VALUES
('Bob Williams', 'bob.williams@gmail.com', '0712345678', '1985-06-15'),
('Jane Taylor', 'jane.taylor@gmail.com', '0723456789', '1990-09-21');

-- Sample data for Appointments
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, reason) VALUES
(1, 1, '2025-09-25 10:00:00', 'Routine heart checkup'),
(2, 3, '2025-09-26 14:00:00', 'Child vaccination');



