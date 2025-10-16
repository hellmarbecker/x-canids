for i in /Users/hellmarbecker/Downloads/raw/*.parquet; do
echo $i
./clickhouse local -q "SELECT *,_file FROM file('$i')" --format Native | \
./clickhouse  client --host mqvsbo7uzs.eu-central-1.aws.clickhouse.cloud --port 9440 --user default --password 'PASSWORD' -q 'INSERT INTO xcanids.raw FORMAT Native'
done



for i in /Users/hellmarbecker/Downloads/signal/*.parquet; do
echo $i
./clickhouse local -q "SELECT *,_file FROM file('$i')" --format Native | \
./clickhouse  client --host mqvsbo7uzs.eu-central-1.aws.clickhouse.cloud --port 9440 --user default --password 'PASSWORD' -q 'INSERT INTO xcanids.signal FORMAT Native'
done


./clickhouse local -q "SELECT * from file('./arbitration_id.csv', CSVWithNames)"  --format Native | \
./clickhouse  client --host mqvsbo7uzs.eu-central-1.aws.clickhouse.cloud --port 9440 --user default --password 'PASSWORD' -q 'INSERT INTO arbitration_id FORMAT Native'

