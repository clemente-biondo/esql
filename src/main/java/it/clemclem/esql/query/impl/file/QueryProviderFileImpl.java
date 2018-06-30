package it.clemclem.esql.query.impl.file;

import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;

import it.clemclem.esql.query.Query;
import it.clemclem.esql.query.QueryId;
import it.clemclem.esql.query.QueryProvider;
import it.clemclem.esql.query.impl.QueryImpl;

public class QueryProviderFileImpl implements QueryProvider{
  private final Path basePath;
  private final Charset charset;//TODO this should be a property of each query
  
  @Override
  public Query get(String path, String name) {
    String content = new String(Files.readAllBytes(basePath.resolve(path).resolve(name)),charset);
    return new QueryImpl(new QueryId(path, name), content);
  }

}
