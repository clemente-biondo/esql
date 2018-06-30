package it.clemclem.esql.query;

public interface QueryProvider {
  Query get(String path, String name);
}
