package com.green.campingsmore.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.SuperBuilder;

@Entity
@Table(name = "camp_pic")
@Data
@SuperBuilder
@NoArgsConstructor
@ToString(callSuper = true)
public class CampPicEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "icamp_pic",updatable = false,nullable = false,columnDefinition = "BIGINT UNSIGNED")
    private Long icampPic;

    @Column(nullable = false)
    private String pic;

    @JoinColumn(name = "icamp",nullable = false)
    @ManyToOne
    private CampEntity campEntity;
}