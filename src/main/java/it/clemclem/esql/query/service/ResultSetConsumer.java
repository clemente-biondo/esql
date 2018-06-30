package it.clemclem.esql.query.service;

import java.sql.ResultSet;

public interface ResultSetConsumer {
  void consume(ResultSet rs) throws Exception;
}
