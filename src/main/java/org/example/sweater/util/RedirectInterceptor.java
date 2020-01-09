package org.example.sweater.util;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RedirectInterceptor extends HandlerInterceptorAdapter {
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response,
                           Object handler, ModelAndView modelAndView) throws Exception {
        super.postHandle(request, response, handler, modelAndView);
        if (modelAndView != null) {
            String arguments = request.getQueryString() != null ? request.getQueryString() : "";
            String url;
            if (arguments != null) {
                url = request.getRequestURI() + "?" + arguments;
            } else {
                url = request.getRequestURI();
            }
            response.setHeader("Turbolinks-Location", url);
        }
    }
}
