package net.sedwinj.wishlister.model;

import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
public class ListDataDTO {
    private Integer id;
    private String name;
    private String description;
    private List<Item> items;

    public ListDataDTO() {
        // TODO: remove testing code

        id = 0;
        name = "Ingredients";
        description = "These are the ingredients that I need to buy for my burger.";

        int itemId = 0;
        items = new ArrayList<>();
        Object[] itemDetails = new Object[]{
                "Beef",
                false,
                "Sauce",
                false,
                "Lettuce",
                false,
                "Cheese",
                true,
                "Pickles",
                false,
                "Onions",
                true,
                "Sesame Seeds",
                false,
                "Buns",
                true
        };
        for (int idx = 0; idx < itemDetails.length;) {
            items.add(new Item(itemId++, id, (String)itemDetails[idx++], (boolean)itemDetails[idx++]));
        }
    }
}
