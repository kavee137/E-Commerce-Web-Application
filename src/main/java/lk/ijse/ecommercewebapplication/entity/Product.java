package lk.ijse.ecommercewebapplication.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
    private int productID;
    private String productName;
    private BigDecimal unitPrice;
    private String productDescription;
    private String tagLine;
    private int categoryID;
    private int qtyOnHand;
    private String color;
    private String image;
    private String capacity;
}
