package net.sedwinj.wishlister.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Entity
@Table
@AllArgsConstructor
public class List_Meta {
    @Id
    @Getter
    private final Integer id;

    @Setter
    private String name;

    @Getter
    @Setter
    private String description;
}
