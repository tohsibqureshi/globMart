package com.example.demo;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class CommonController {
	@Autowired
	HttpServletRequest request;
	@Autowired
	CategoryService categoryService;
@Autowired
AddressService addService;
	@RequestMapping({ "/", "/home" })
	public ModelAndView home() {
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickHome", true);
		m.addObject("title", "Home");
		m.addObject("cate", categoryService.list());
		m.addObject("productType", categoryService.getOnlyCategory());
		return m;
	}

	
	@RequestMapping("/admin")
	public ModelAndView admin() {
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickAdmin", true);
		m.addObject("title", "Admin");
		m.addObject("productType", categoryService.getOnlyCategory());
		return m;
	}

	@RequestMapping({ "/about" })
	public ModelAndView about() {
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickAbout", true);
		m.addObject("title", "About Us");
		return m;
	}

	@RequestMapping({ "/contact" })
	public ModelAndView contact() {
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickContact", true);
		m.addObject("title", "Contact Us");
		return m;
	}

	@RequestMapping(value = { "/allproducts", "product" })
	public ModelAndView allProducts() {
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickAllProducts", true);
		m.addObject("title", "All Products");
		m.addObject("cate", categoryService.list());
		return m;
	}
	@RequestMapping("/cart")
	public ModelAndView cart() {
		
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickCart", true);
		m.addObject("title", "Cart"); 
		m.addObject("cartItem", categoryService.getCartlist());
		m.addObject("cartTotal", categoryService.getCartTotal());
		
		return m;
	}

	
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam String username, @RequestParam String password) {
		if (username.equals("tohsibqureshi") && password.equals("123456")) {
			ModelAndView m = new ModelAndView("index");
			m.addObject("userClickAdminFun", true);
			return m;
		} else {
			ModelAndView m = new ModelAndView("index");
			m.addObject("userClickAdmin", true);
			m.addObject("title", "Product Form");
			return m;
		}

	}

	@RequestMapping("/productf")
	public ModelAndView showForm() {
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickProductForm", true);
		return m;
	}
	
	@RequestMapping("/sendmail")
	public ModelAndView sendMail() {
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickMail", true);
		return m;
	}


	@RequestMapping("/send")
	public ModelAndView send(@RequestParam String subject,@RequestParam String mailBody) {
		
		String status = addService.sendingMail(subject,mailBody);
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickMail", true);
		m.addObject("staus", status);
		return m;
	}

	
	@RequestMapping(value="/addproduct",method=RequestMethod.POST)
	public ModelAndView addRecord(Category product,@RequestParam MultipartFile file) {
		String filename=file.getOriginalFilename();
		String realPath=request.getRealPath("/");
		String finalPath=realPath+"upload";
		System.out.println("-========="+realPath);
		System.out.println("==============="+finalPath);
		System.out.println("================"+product);
		try {
		
			BufferedOutputStream b=new BufferedOutputStream(new 
					FileOutputStream(finalPath+'/'+filename));
		b.write(file.getBytes());
		b.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		
		product.setImageName(filename);
		categoryService.addRecord(product);
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickHome", true);
		m.addObject("cate", categoryService.list());
		m.addObject("productType", categoryService.getOnlyCategory());
		return m;
	}
	@RequestMapping("/category{name}")
	public ModelAndView getLaptops(@PathVariable String name) {
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickHome", true);
		m.addObject("title", "Online Shop");
		m.addObject("cate", categoryService.CategoryList(name));
		m.addObject("productType", categoryService.getOnlyCategory());
		return m;
	}	
	
	
	@RequestMapping("/showdetails{name}")
	public ModelAndView getDetail(@PathVariable String name) {
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickDetail", true);
		m.addObject("title", name); 
		m.addObject("item", categoryService.getItem(name));
		return m;
	}
	@RequestMapping("/{name}")
	public ModelAndView addToCart(@PathVariable String name) {
		categoryService.addToCart(name);
		
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickCart", true);
		m.addObject("title", "Cart"); 
		m.addObject("cartItem", categoryService.getCartlist());
		m.addObject("cartTotal", categoryService.getCartTotal());
		
		return m;
	}
	@RequestMapping("/remove{name}")
	public ModelAndView removeFromCart(@PathVariable String name) {
		categoryService.removeFromCart(name);
		
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickCart", true);
		m.addObject("title", "Cart"); 
		m.addObject("cartItem", categoryService.getCartlist());
		m.addObject("cartTotal", categoryService.getCartTotal());
		
		return m;
	}

	@RequestMapping("/paymentaddaddress")
	public ModelAndView payment(User user){
		
		addService.addAddress(user);
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickPayment", true);
		m.addObject("title", "Payment"); 
		m.addObject("cartItem", categoryService.getCartlist());
		m.addObject("cartTotal", categoryService.getCartTotal());
		m.addObject("user", user);
		
		return m;
		
	}
	
	
	@RequestMapping("/success")
	public ModelAndView sStatus(){
		
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickPaymentStatusSuccess", true);
		m.addObject("title", "PaymentStatus"); 
		
		return m;
	}
	@RequestMapping("/failure")
	public ModelAndView fStatus(){
		
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickPaymentStatusFailure", true);
		m.addObject("title", "PaymentStatus"); 
		
		return m;
	}
	@RequestMapping("/addressform")
public ModelAndView addressForm(){
		
		ModelAndView m = new ModelAndView("index");
		m.addObject("userClickAddressForm", true);
		m.addObject("title", "Address Form"); 
		
		return m;
	}
}