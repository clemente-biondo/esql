package it.clemclem.esql.query;

import java.util.List;

public interface QueryExecutor {
  
  <T> T query(Query id, ResultSetMapper<T> rsMapper, QueryParameters parameters)throws QueryExecutionException;

  <T> List<T> query(Query id, RowMapper<T> rowMapper, QueryParameters parameters)throws QueryExecutionException;

  void query(Query id, ResultSetConsumer consumer, QueryParameters parameters)throws QueryExecutionException;

  <T> T query(Query id, ResultSetMapper<T> rsMapper)throws QueryExecutionException;

  <T> List<T> query(Query id, RowMapper<T> rowMapper)throws QueryExecutionException;

  void query(Query id, ResultSetConsumer consumer) throws QueryExecutionException;
}
