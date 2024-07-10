CREATE TABLE IF NOT EXISTS StaffStatus (
    code VARCHAR(20) NOT NULL,
    label VARCHAR(20) NOT NULL,
    PRIMARY KEY (code)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_bin
COMMENT = '社内ユーザーステータス';

CREATE TABLE IF NOT EXISTS Staff (
    id VARCHAR(26) NOT NULL COMMENT '社内ユーザーID',
    staffStatus VARCHAR(20) COMMENT '社内ユーザーステータス',
    email VARCHAR(256) COMMENT 'メールアドレス',
    staffName VARCHAR(50) COMMENT '社内ユーザー名',
    password VARCHAR(126) COMMENT 'パスワード',
    oldPassword VARCHAR(126) COMMENT '前回パスワード',
    passwordLastUpdatedAt DATETIME COMMENT 'パスワード最終更新日時',
    loginFailureCount INT COMMENT 'ログイン失敗回数',
    createdAt DATETIME COMMENT '作成日時',
    createdBy VARCHAR(26) COMMENT '作成者',
    updatedAt DATETIME COMMENT '更新日時',
    updatedBy VARCHAR(26) COMMENT '更新者',
    version INT NOT NULL DEFAULT 0 COMMENT 'バージョン',
    PRIMARY KEY (id),
    CONSTRAINT fk_Staff_StaffStatus FOREIGN KEY (staffStatus) REFERENCES StaffStatus (code) ON DELETE NO ACTION ON UPDATE CASCADE
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_bin
COMMENT = '社内ユーザー';
