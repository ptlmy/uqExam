from pyspark import SparkContext
from pyspark.sql import SQLContext, SparkSession


from pyspark import SparkContext, SparkConf
import uuid


if __name__ == "__main__":
  conf = SparkConf().setAppName("FileLoad").set("spark.cassandra.connection.host", "cassandra0")

  sc = SparkContext(conf=conf)
  spark = SparkSession(sc)

  tokenized = sc.textFile("SMSSpamCollection.txt")
  splitFile = tokenized.map(lambda line: line.split("\t"))
  writeFile = splitFile.map(lambda arr: (str(uuid.uuid4()), arr[0], arr[1])).toDF(["key","spamkey", "spamtext"])

  writeFile.write.format("org.apache.spark.sql.cassandra").mode('append').options(table="spamdata", keyspace="exams").save()
