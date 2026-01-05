google cloud shell

bq query --use_legacy_sql=false \
  SELECT word, SUM(word_count) AS count
  FROM `bigquery-public-data`.samples.shakespeare
  WHERE word LIKE '%raisin%'
  GROUP BY word
