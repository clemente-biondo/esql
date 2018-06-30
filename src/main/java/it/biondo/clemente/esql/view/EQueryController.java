package it.biondo.clemente.esql.view;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.NotNull;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import it.biondo.clemente.esql.query.QueryExecutor;

@RestController
@RequestMapping("/api/equeries/")
public class EQueryController {
  
  private final QueryExecutor qe;

  @Autowired
  public EQueryController(QueryExecutor qe) {
    super();
    this.qe = qe;
  }

  @PostMapping
  public int addQuery(@NotNull @RequestParam("query") MultipartFile file, @NotNull String title,String description) {
    
    return -1;
  } 
  
  @GetMapping(path="{path}")
  public void writeQuery(@PathVariable String path,HttpServletResponse resp,@RequestParam MultiValueMap<String, String> params) throws IOException {
    qe.execute(path,params,resp.getWriter());
  }
}
