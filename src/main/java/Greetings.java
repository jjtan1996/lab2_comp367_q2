import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

public class Greetings {

    public static void main(String[] args) {
        LocalTime time = LocalTime.now();
        String greeting;
        if (time.isBefore(LocalTime.NOON)) {
            greeting = "Good morning";
        } else {
            greeting = "Good afternoon";
        }
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("h:mm:ss a");
        System.out.println(greeting + ", Jasper Jan Tan, Welcome to COMP367. The Local time is " + LocalTime.now().format(formatter));

    }
}