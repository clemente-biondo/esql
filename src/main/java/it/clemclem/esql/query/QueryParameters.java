package it.clemclem.esql.query;

public interface QueryParameters {
  
  void set(String name, String[] value);

  void set(String name, String value);

  void set(String name, Integer[] value);

  void set(String name, Integer value);

  void set(String name, int[] value);

  void set(String name, int value);
}
