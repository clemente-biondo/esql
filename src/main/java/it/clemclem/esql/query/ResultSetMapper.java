package it.clemclem.esql.query;

import java.sql.ResultSet;

public interface ResultSetMapper<T> {
  T mapResultSet(ResultSet rs) throws Exception;
}
