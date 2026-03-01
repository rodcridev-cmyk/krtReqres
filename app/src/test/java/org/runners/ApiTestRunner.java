package org.runners;
import com.intuit.karate.junit5.Karate;

public class ApiTestRunner {

    @Karate.Test
    Karate runAll() {
        return Karate.run("classpath:features")
                .relativeTo(getClass());
    }
}