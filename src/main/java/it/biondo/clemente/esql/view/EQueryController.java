package it.biondo.clemente.esql.view;

import javax.validation.constraints.NotNull;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/api/equeries/")
public class EQueryController {

  @PostMapping
  public int addQuery(@NotNull @RequestParam("query") MultipartFile file, @NotNull String title,String description) {
    
    return -1;
  } 
}
