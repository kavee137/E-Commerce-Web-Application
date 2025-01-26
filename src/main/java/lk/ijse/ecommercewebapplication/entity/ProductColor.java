package lk.ijse.ecommercewebapplication.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductColor {
    private int productColorID;
    private int productId;
    private String colorName;
}
