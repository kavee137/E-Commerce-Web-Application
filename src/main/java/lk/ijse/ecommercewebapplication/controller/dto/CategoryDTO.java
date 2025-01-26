package lk.ijse.ecommercewebapplication.controller.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class CategoryDTO {
    private int categoryId;
    private String category;
    private String categoryImage;

    public CategoryDTO(int categoryId, String category) {
        this.categoryId = categoryId;
        this.category = category;
    }

}
