CREATE TABLE `doctors`(
    `doctor_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(50) NOT NULL,
    `contact_number` VARCHAR(15) NOT NULL,
    `email` VARCHAR(50) NOT NULL,
    `column_5` BIGINT NOT NULL
);
CREATE TABLE `Appointments`(
    `appointment_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `patient_id` BIGINT NOT NULL,
    `doctor_id` BIGINT NOT NULL,
    `appointment_date` DATETIME NOT NULL,
    `diagnosis` TEXT NOT NULL
);
ALTER TABLE
    `Appointments` ADD INDEX `appointments_patient_id_index`(`patient_id`);
ALTER TABLE
    `Appointments` ADD INDEX `appointments_doctor_id_index`(`doctor_id`);
CREATE TABLE `supplies`(
    `tool_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `tool_name` VARCHAR(50) NOT NULL,
    `column_3` BIGINT NOT NULL,
    `quantity` INT NOT NULL,
    `column_5` BIGINT NOT NULL
);
CREATE TABLE `Patients`(
    `patient_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `first_name` VARCHAR(50) NOT NULL,
    `last_name` VARCHAR(50) NOT NULL,
    `gender` CHAR(1) NOT NULL,
    `age` BIGINT NOT NULL,
    `date_of_birth` TEXT NOT NULL,
    `contact_number` VARCHAR(15) NOT NULL,
    `medical_records` TEXT NOT NULL
);
CREATE TABLE `Receptionists`(
    `receptionist_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    `contact_number` VARCHAR(15) NOT NULL,
    `email` VARCHAR(50) NOT NULL
);