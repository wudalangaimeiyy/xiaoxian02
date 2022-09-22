package com.xiaoxian.test;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * ClassName: PropertieStrans
 * Description:
 * date: 2022/9/18 15:25
 *
 * @author: lenovo
 * @version:
 * @since JDK 1.8
 */
public class PropertiesTrans extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Properties properties = new Properties();
        InputStream inputStream = PropertiesTrans.class.getClassLoader().getResourceAsStream("aaxiaoxian.properties");
        properties.load(inputStream);
        resp.getWriter().println(properties.getProperty("name"));
        resp.getWriter().println(properties.getProperty("love"));

    }



}
