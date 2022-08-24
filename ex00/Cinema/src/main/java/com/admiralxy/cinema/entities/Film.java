package com.admiralxy.cinema.entities;

import lombok.*;
import javax.persistence.*;

@Entity
@Table(name = "films")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Film extends BaseEntity {

    @Column(name = "title", nullable = false)
    private String title;

    @Column(name = "release_year", nullable = false)
    private Integer releaseYear;

    @Column(name = "age_restrictions", nullable = false)
    private String ageRestrictions;

    @Lob
    @Column(name = "description", length = 20000, nullable = false)
    private String description;
}
