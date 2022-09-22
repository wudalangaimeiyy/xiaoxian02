package com.xiaoxian.test;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * ClassName: com.xiaoxian.test.ServletOutput
 * Description:
 * date: 2022/9/18 14:28
 *
 * @author: lenovo
 * @version:
 * @since JDK 1.8
 */
public class ServletOutput extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        for (int i=1;i<=9;i++){
            for (int j=1;j<=i;j++){
                System.out.print(j+"*"+i+"="+i*j+"\t");
            }
            System.out.println();
        }


    }
}
