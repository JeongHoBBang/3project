package com.green.campingsmore.user.camping;

import com.green.campingsmore.entity.CampEntity;
import com.green.campingsmore.entity.PayStatus;
import com.green.campingsmore.user.camping.model.*;
import io.lettuce.core.dynamic.annotation.Param;
import jakarta.persistence.criteria.CriteriaBuilder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDate;
import java.util.List;

public interface CampingRepository extends JpaRepository<CampEntity,Long>{
    @Query("select new com.green.campingsmore.user.camping.model.CampingList(c.icamp,c.name, c.address, c.campPhone,c.mainPic,n.city,c.delyn)"+
            " from CampEntity c join c.nationwideEntity n " + " where n.inationwide = :inationwide and c.delyn = :delyn")
    List<CampingList> selCamping(@Param("inationwide") Long inationwide, @Param("delyn") Integer delyn);

    @Query("select new com.green.campingsmore.user.camping.model.CampingList(c.icamp,c.name, c.address, c.campPhone,c.mainPic,n.city,c.delyn)"+
            " from CampEntity c join c.nationwideEntity n " + " where c.delyn = :delyn")
    List<CampingList> selCampingAll(@Param("delyn") Integer delyn);

    @Query("select new com.green.campingsmore.user.camping.model.CampingDetailList(c.icamp,c.name, c.campPhone, c.address,c.price,c.capacity,c.quantity,c.note,b.pic)"+
            " from CampEntity c join CampPicEntity b on b.campEntity.icamp = c.icamp" + " where c.icamp = :icamp")
    List<CampingDetailList> selDeCamping(@Param("icamp") Long icamp);

    @Query("SELECT NEW com.green.campingsmore.user.camping.model.CampingMyList(b.ireserve, a.iuser, c.name, d.iday, d.date, c.mainPic, c.campPhone) " +
            "FROM ReserveEntity b " +
            "JOIN b.userEntity a " +
            "JOIN b.campEntity c " +
            "JOIN ReserveDayEntity d ON c.icamp = d.campEntity.icamp " +
            "WHERE a.iuser = :iuser AND DATE(b.reservation) = DATE(d.date) and b.payStatus = :PayStatus")
    List<CampingMyList> selMyList(@Param("iuser") Long iuser, @Param("PayStatus")PayStatus PayStatus);

    @Query("select new com.green.campingsmore.user.camping.model.CampingList(c.icamp,c.name, c.address, c.campPhone,c.mainPic,n.city,c.delyn)"+
            " from CampEntity c join c.nationwideEntity n " + " where c.name LIKE CONCAT('%', :name, '%') and c.delyn = :delyn")
    List<CampingList> selTitleCamping(@Param("name") String name, @Param("delyn") Integer delyn);
    @Query("select new com.green.campingsmore.user.camping.model.DailyList(d.iday, d.date, d.dayQuantity, c.icamp)"+
    " from ReserveDayEntity  d join d.campEntity c" + " where d.date = :date")
    List<DailyList> selIday(LocalDate date);
    @Query("select new com.green.campingsmore.user.camping.model.DailyList(d.iday, d.date, d.dayQuantity, c.icamp)"
    + " from ReserveDayEntity  d join d.campEntity c" + " where d.date = :date and c.icamp = :icamp")
    List<DailyList> selIcampDay(@Param("icamp") Long icamp, LocalDate date);
//
//    @Query("select new com.green.campingsmore.user.camping.model.CampingDetailList1(c.icamp,c.name, c.campPhone, c.address,c.price,c.capacity,c.quantity,c.note,b.)"+
//            " from CampEntity c join CampPicEntity b on b.campEntity.icamp = c.icamp" + " where c.icamp = :icamp")
//    List<CampingDetailList1> selAdminCamp(@Param("icamp") Long icamp);




}
