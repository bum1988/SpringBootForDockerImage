package hello;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class Application {

    @RequestMapping("/")
    public String hello() {
        return "Hello KaKaoPay Team!!";
    }

    @RequestMapping("/health")
    public Response healthCheck() {
        return new Response("success", "It works well!!");
    }

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

}
