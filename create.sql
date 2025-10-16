-- X-CANIDS dataset https://ieee-dataport.org/open-access/x-canids-dataset-vehicle-signal-dataset
-- https://arxiv.org/html/2303.12278v3

DROP DATABASE IF EXISTS xcanids;
CREATE DATABASE xcanids;

CREATE TABLE xcanids.raw(
    arbitration_id Int64,					
    dlc	Int64,		
    data String,					
    label Int64,					
    timestamp Int64,
    _file String
)
ENGINE = MergeTree
ORDER BY arbitration_id;

CREATE TABLE xcanids.signal(
    arbitration_id Int64,					
    dlc	Int64,		
    data String,					
    label Int64,					
    timestamp Int64,
    _file String
)
ENGINE = MergeTree
ORDER BY arbitration_id;

CREATE TABLE arbitration_id(
    arbitration_id Int64,
    AID_HEX String,
    Name String,
    `#signals` String,
    `#messages` Int64,
    `#uniq_data` Int64,
    interval_mean Float64,
    interval_std Float64,
    uniq_DLC String
)
ENGINE = MergeTree
ORDER BY arbitration_id;

