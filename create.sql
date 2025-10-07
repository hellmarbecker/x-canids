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

