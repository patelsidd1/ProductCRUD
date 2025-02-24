package com.Controller;

import com.Dao.ProductDao;
import com.Model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class MainController {
    @Autowired
    private ProductDao productDao;


    @RequestMapping("/")
    public String home(Model m ){
        List<Product> products = productDao.getProducts();
        m.addAttribute("product", products);
        return "index";
    }

    //Show add product form
    @RequestMapping("/add-product")
    public String addProduct(Model m){
        m.addAttribute("title","Add Product");
        System.out.println("This is add product ");
        return "add-product";
    }
    // Handle add product form
    @RequestMapping(value = "/handleProduct", method = RequestMethod.POST)
    public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request){
        System.out.println(product);
        productDao.createProduct(product);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath()+"/");
        return redirectView;

    }

    // Delete handler
    @RequestMapping("/delete/{productId}")
    public RedirectView deleteProduct(@PathVariable("productId")int productId, HttpServletRequest request){
        this.productDao.deleteProduct(productId);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() + "/");
        return  redirectView;

    }
    // Update the Data
    @RequestMapping("/update/{productId}")
    public String updateForm(@PathVariable("productId") int pid,HttpServletRequest request, Model m ){
       Product product =  this.productDao.getProduct(pid);
       m.addAttribute("product",product);
        return "update";

    }


}
