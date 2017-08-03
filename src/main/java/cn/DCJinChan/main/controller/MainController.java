package cn.DCJinChan.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Clown on 2017/08/03.
 */
@Controller
public class MainController {
    @RequestMapping(value = "toDriver",method = RequestMethod.GET)
    public String toDriver(){
        return "driver";
    }
    @RequestMapping(value = "toVehicle",method = RequestMethod.GET)
    public String toVehicle(){
        return "vehicle";
    }
}
