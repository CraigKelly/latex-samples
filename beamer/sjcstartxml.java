ApplicationContext ctx;
ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
ctx.getBean("mainBean", SomeMainClass.class).doStuff();
