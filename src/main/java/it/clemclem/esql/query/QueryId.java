package it.clemclem.esql.query;

import java.io.Serializable;

public class QueryId implements Serializable {
  private static final long serialVersionUID = 5142222821906849857L;
  private final String path;
  private final String name;

  public QueryId(String path, String name) {
    super();
    this.path = path;
    this.name = name;
  }

  public String getPath() {
    return path;
  }

  public String getName() {
    return name;
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((name == null) ? 0 : name.hashCode());
    result = prime * result + ((path == null) ? 0 : path.hashCode());
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
    QueryId other = (QueryId) obj;
    if (name == null) {
      if (other.name != null)
        return false;
    } else if (!name.equals(other.name))
      return false;
    if (path == null) {
      if (other.path != null)
        return false;
    } else if (!path.equals(other.path))
      return false;
    return true;
  }

  @Override
  public String toString() {
    return path + "/" + name;
  }
  
  public static QueryId of(String path, String name) {
    return new QueryId(path, name);
  }

}
