ApplicationContext ctx;
ctx = new AnnotationConfigApplicationContext(JavaAppContext.class);
ctx.getBean("mainBean", SomeMainClass.class).doStuff();
