# database-wk8

clinic booking database system

This project is a relational database management system designed for a Clinic Booking System using MySQL.
It models patients, doctors, departments, and appointments with proper constraints and relationships.

Database Schema

The database contains the following tables:

Departments – stores different medical departments (e.g., Cardiology, Neurology).

Doctors – stores doctor information, linked to departments.

Patients – stores patient details.

Appointments – links patients and doctors with appointment details.

Relationships

One Department → Many Doctors

One Doctor → Many Appointments

One Patient → Many Appointments
