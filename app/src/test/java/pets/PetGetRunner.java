package pets;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class PetGetRunner {
    @Test
    Karate petGet() {
        return Karate.run("pets").relativeTo(this.getClass());
    }
}
