package it.biondo.clemente.esql.query.impl;

import java.io.PrintWriter;
import java.sql.ResultSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.util.MultiValueMap;

import it.biondo.clemente.esql.query.QueryExecutor;
import it.biondo.clemente.esql.query.QueryResolver;

@Repository
public class QueryExecutorImpl implements QueryExecutor{
  private final QueryResolver qr;
  private final NamedParameterJdbcTemplate template;
  @Autowired
  public QueryExecutorImpl(QueryResolver qr,NamedParameterJdbcTemplate template) {
    super();
    this.qr = qr;
    this.template=template;
  }

  @Override
  public void execute(String path, MultiValueMap<String, String> params, PrintWriter writer) {
    String query=qr.getQuery(path);
    StringBuilder sb = new StringBuilder();
    template.query(query, params, (RowCallbackHandler) rs->{
       int colCount=rs.getMetaData().getColumnCount();
       for (int i=1;i<=colCount;i++) {
         sb.append((i==1?"[":"")+"\""+rs.getString(i)+"\""+ (i<colCount ?",":"],"));  
       }
    });
    if (sb.length()>0) {
      sb.setLength(sb.length()-1);
    }
    writer.append("["+sb+"]");
  }

}
