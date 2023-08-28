package com.main;

import com.connectDB.*;
import java.io.IOException;
import java.lang.reflect.Array;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/com/main/main")
public class main extends HttpServlet{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

        Map<String, Object> dataMap = new HashMap<>();
        dataMap.put("head", "測試抬頭01");
        dataMap.put("detail", "測試客訴內容01");
        dataMap.put("userName", "chen");
        dataMap.put("time", "2023-09-01");
        dataMap.put("status", "已完成");

        String json = "{";
        boolean first = true;
        for (Map.Entry<String, Object> entry : dataMap.entrySet()) {
            if (!first) {
                json += ",";
            }
            json += "\"" + entry.getKey() + "\":\"" + entry.getValue() + "\"";
            first = false;
        }
        json += "}";

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
	}

}


