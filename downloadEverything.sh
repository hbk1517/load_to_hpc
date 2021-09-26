wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/pigFiles.tar.gz
tar xvzf pigFiles.tar.gz
hdfs dfs -mkdir /user/maria_dev/pigtest
hdfs dfs -copyFromLocal PigSamples/*.csv /user/maria_dev/pigtest/

rm -fr PigSamples
rm -fr pigFiles.tar.gz

wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/Fielding.csv
hdfs dfs -copyFromLocal Fielding.csv /user/maria_dev/pigtest/

wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/hiveFiles.tar.gz
hdfs dfs -mkdir /user/maria_dev/hivetest
tar xvzf hiveFiles.tar.gz
hdfs dfs -copyFromLocal HiveSamples/numbers.txt /user/maria_dev/hivetest/
hdfs dfs -copyFromLocal HiveSamples/Batting.csv /user/maria_dev/hivetest/
hdfs dfs -mkdir /user/maria_dev/hivetest/master/
hdfs dfs -copyFromLocal HiveSamples/Master.csv /user/maria_dev/hivetest/master/

rm hiveFiles.tar.gz
rm -fr HiveSamples

hdfs dfs -mkdir /user/maria_dev/hivetest/fielding/
hdfs dfs -copyFromLocal Fielding.csv /user/maria_dev/hivetest/fielding/

rm -fr Fielding.csv

wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/wap.txt
hdfs dfs -copyFromLocal wap.txt /user/zeppelin/

rm -fr wap.txt

wget https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2016-06.csv
mv yellow_tripdata_2016-06.csv taxi.csv
hdfs dfs -copyFromLocal taxi.csv /user/zeppelin/

rm -fr taxi.csv

wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/smaller.csv
hdfs dfs -copyFromLocal smaller.csv /user/zeppelin/
rm -fr smaller.csv

wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/taxi2018.csv
hdfs dfs -mkdir /user/zeppelin/taxi/
hdfs dfs -copyFromLocal taxi2018.csv /user/zeppelin/taxi/
rm -fr taxi2018.csv

wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/final.zip
unzip final.zip
hdfs dfs -mkdir /user/maria_dev/final/
hdfs dfs -mkdir /user/maria_dev/final/Oshkosh/
hdfs dfs -mkdir /user/maria_dev/final/IowaCity/
hdfs dfs -copyFromLocal final/OshkoshWeather.csv /user/maria_dev/final/Oshkosh/
hdfs dfs -copyFromLocal final/IowaCityWeather.csv /user/maria_dev/final/IowaCity/

rm -fr final.zip
rm -fr final

rm downloadEverything.sh
