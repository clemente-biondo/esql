package it.clemclem.esql.query.impl;

import it.clemclem.esql.query.Query;
import it.clemclem.esql.query.QueryId;
import it.clemclem.esql.query.QueryMetadata;

public class QueryImpl implements Query {
  private final String queryContent;
  private final QueryId id;
  private final QueryMetadata metadata;
  
  public QueryImpl(QueryId id,QueryMetadata metadata,String queryContent) {
    super();
    this.queryContent = queryContent;
    this.id = id;
    this.metadata=metadata;
  }

  public String getQueryContent() {
    return queryContent;
  }

  public QueryId getId() {
    return id;
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((id == null) ? 0 : id.hashCode());
    return result;
  }

  @Override
  public boolean equals(Object obj) {
    if (this == obj)
      return true;
    if (obj == null)
      return false;
    if (getClass() != obj.getClass())
      return false;
    QueryImpl other = (QueryImpl) obj;
    if (id == null) {
      if (other.id != null)
        return false;
    } else if (!id.equals(other.id))
      return false;
    return true;
  }

}
