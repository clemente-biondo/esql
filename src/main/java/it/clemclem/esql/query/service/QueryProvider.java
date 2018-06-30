package it.clemclem.esql.query.service;

public interface QueryProvider {
  Query get(QueryId id);
}
