package com.green.campingsmore.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.SuperBuilder;

import java.time.LocalDate;
import java.util.List;


@Entity
@Table(name = "camp")
@Data
@SuperBuilder
@NoArgsConstructor
@ToString(callSuper = true)
public class CampEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(updatable = false,nullable = false,columnDefinition = "BIGINT UNSIGNED")
    private Long icamp;

    @Column(nullable = false,columnDefinition = "INT UNSIGNED")
    private Integer quantity;



    @Column(nullable = false)
    private String name;

    @Column(updatable = false,nullable = false)
    private String address;


    @Column(name = "main_pic")
    private String mainPic;

    @Column(name = "camp_phone",nullable = false)
    @Size(min = 9,max = 20)
    private String campPhone;

    @Column(nullable = false)
    private Integer price;



    @Column(nullable = false,length = 2)
    private Integer capacity;

    private String note;

    @Column(name = "del_yn",columnDefinition = "TINYINT not null DEFAULT 1 CHECK(del_yn in (0,1))",length = 1)
    private Integer delyn;

    @ManyToOne
    @JoinColumn(name = "inationwide",nullable = false)
    private NationwideEntity nationwideEntity;
}
