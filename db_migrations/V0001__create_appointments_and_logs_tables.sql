CREATE TABLE IF NOT EXISTS appointments (
    id SERIAL PRIMARY KEY,
    appointment_id VARCHAR(50) UNIQUE NOT NULL,
    service_id VARCHAR(50) NOT NULL,
    service_name VARCHAR(255) NOT NULL,
    service_price INTEGER NOT NULL,
    doctor_id VARCHAR(50) NOT NULL,
    doctor_name VARCHAR(255) NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_time VARCHAR(10) NOT NULL,
    patient_name VARCHAR(255) NOT NULL,
    patient_phone VARCHAR(50) NOT NULL,
    patient_email VARCHAR(255),
    status VARCHAR(20) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_appointment_id ON appointments(appointment_id);
CREATE INDEX idx_status ON appointments(status);
CREATE INDEX idx_appointment_date ON appointments(appointment_date);
CREATE INDEX idx_patient_phone ON appointments(patient_phone);

CREATE TABLE IF NOT EXISTS appointment_logs (
    id SERIAL PRIMARY KEY,
    appointment_id VARCHAR(50) NOT NULL,
    action VARCHAR(50) NOT NULL,
    old_data JSONB,
    new_data JSONB,
    user_ip VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_logs_appointment_id ON appointment_logs(appointment_id);
CREATE INDEX idx_logs_action ON appointment_logs(action);
CREATE INDEX idx_logs_created_at ON appointment_logs(created_at);