package com.kiwi.dto.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.kiwi.entities.Category;
import com.kiwi.entities.Image;
import com.kiwi.entities.Product;
import lombok.*;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ProductResponse {

    private long id;
    private String name;
    private String description;
    private long price;
    private int quantity;
    @JsonProperty("category_id")
    private Category category;
    @JsonProperty("product_images")
    private Set<Image> images = new HashSet<>();

}
