package it.biondo.clemente.esql.query.impl;

import java.io.IOException;
import java.io.UncheckedIOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Paths;

import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Repository;

import it.biondo.clemente.esql.query.QueryResolver;

@Repository
public class QueryResolverFileImpl implements QueryResolver{
  private final static ClassLoader CL = QueryResolverFileImpl.class.getClassLoader();

  @Override
  public String getQuery(String path) {
    try {

      return IOUtils.toString(Paths.get("bin/main/sql/"+path).toUri(),StandardCharsets.UTF_8);
      //return IOUtils.toString(CL.getResourceAsStream("sql/"+path),StandardCharsets.UTF_8);
    } catch (IOException e) {
      throw new UncheckedIOException(e);
    }
  }
  
  
}
