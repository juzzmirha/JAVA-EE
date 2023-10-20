package com.example.Showroom.services;
import com.example.Showroom.models.Car;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;
@Service
public class ProductService {
    private List<Car> cars = new ArrayList<>();
    private long ID = 0;

    public  List<Car> listProducts(){
        return cars;
    }

    public void saveProduct(Car car){
        car.setId(++ID);
        cars.add(car);

    }
    public void deleteProduct(Long id){
        cars.removeIf(car -> car.getId().equals(id));
    }

    public Car getProdcutById(Long id) {
     for (Car car : cars){
         if(car.getId().equals(id)) return car;
     }
     return null;

    }

    public Car updateProduct(Long id, Car updatedCar) {
        for (int i = 0; i < cars.size(); i++) {
            Car car = cars.get(i);
            if (car.getId().equals(id)) {
                // Обновление полей продукта
                car.setTitle(updatedCar.getTitle());
                car.setDescription(updatedCar.getDescription());
                car.setPrice(updatedCar.getPrice());
                // Можно обновить другие поля, если они есть

                return car;
            }
        }
        return null; // Возвращает null, если продукт с указанным id не найден
    }


}
