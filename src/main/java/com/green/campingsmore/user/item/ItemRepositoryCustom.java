package com.green.campingsmore.user.item;

import com.green.campingsmore.entity.ItemEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ItemRepositoryCustom {
    Integer selPriceFromItem(Long iitem);
}
