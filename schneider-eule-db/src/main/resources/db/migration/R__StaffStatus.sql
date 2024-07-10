INSERT INTO StaffStatus (code, label) VALUES
    ('ENABLED', '有効'),
    ('DISABLED', '無効') AS newStaffStatus
ON DUPLICATE KEY UPDATE
    label = newStaffStatus.label
