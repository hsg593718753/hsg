package com.accp.spring.mapper;

import com.accp.spring.domain.Bill;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface BillMaper {


    List<Bill> selectByAll();


    Bill getByALL();
}
