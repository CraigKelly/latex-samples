@Configuration
public class JavaAppContext {
    @Bean
    public BigBean mainBean() {
        BigBean bean = new BigBean();
        bean.setNeededBean(childBean());
        return bean;
    }
    
    @Bean
    public SubBean childBean1() {
        SubBean bean = new SubBean();
        bean.setName("A");
        return bean;
    }
}
