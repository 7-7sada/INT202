package sit.int202.simple.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@ToString
public class Subject {
    private String id;
    private String title;
    private Integer credit;
}
