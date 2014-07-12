@Configuration
public class JavaAppContext {
    @Bean
    public Thing someThing() {
        return new Thing();
    }
    
    @Bean
    public CatInTheHat catHat() {
        CatInTheHat bean = new CatInTheHat();
        bean.setThingOne(someThing());
        bean.setThingTwo(someThing());
        return bean;
    }
}
