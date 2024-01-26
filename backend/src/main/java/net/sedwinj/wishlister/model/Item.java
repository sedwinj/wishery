package net.sedwinj.wishlister.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Entity
@Table
@AllArgsConstructor
public class Item {
    @Id
    private Integer id;

    private Integer listId;

    @Setter
    private String name;

    @Setter
    private boolean completed;
}
