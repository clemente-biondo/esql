package it.clemclem.esql.query;

public interface QueryProvider {
  Query get(QueryId id);
}
