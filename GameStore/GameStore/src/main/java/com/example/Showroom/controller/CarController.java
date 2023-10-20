package com.example.Showroom.controller;

import com.example.Showroom.models.Car;
import com.example.Showroom.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@RequiredArgsConstructor
public class CarController {
    private final ProductService productService;

    @Autowired
    private CarRepository carRepository;

    @GetMapping("/")
    public String product(Model model){
        model.addAttribute("products",productService.listProducts());
        carRepository.findAll();
        return "car";
    }
@GetMapping("/car/{id}")
public Object productInfo(@PathVariable Long id, Model model){
        model.addAttribute("car", productService.getProdcutById(id));
    carRepository.findById(id).orElse(null);
    return "car-info";
}


    @PostMapping("/car/create")
    public String createProduct(Car car){
     productService.saveProduct(car);
     carRepository.save(car);

        return "redirect:/";
    }
   @PostMapping("/car/delete/{id}")
    public String deleteProduct(@PathVariable Long id){
productService.deleteProduct(id);
       carRepository.deleteById(id);
        return "redirect:/";


   }
    @PostMapping("/car/update/{id}")
    public String updateProduct(@PathVariable Long id, Car updatedCar) {
        Car existingCar = productService.getProdcutById(id);
        if (existingCar != null) {
            // Обновление полей существующего продукта
            existingCar.setTitle(updatedCar.getTitle());
            existingCar.setDescription(updatedCar.getDescription());
            existingCar.setPrice(updatedCar.getPrice());
            existingCar.setCity(updatedCar.getCity());
            existingCar.setAuthor(updatedCar.getAuthor());

            // Сохранение обновленного продукта
            carRepository.save(existingCar);
        }
        return "redirect:/car/" + id;
    }
  }
