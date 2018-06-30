package it.biondo.clemente.esql.query;

import java.io.PrintWriter;

import org.springframework.util.MultiValueMap;

public interface QueryExecutor {

  void execute(String path, MultiValueMap<String, String> params, PrintWriter writer);;
}
