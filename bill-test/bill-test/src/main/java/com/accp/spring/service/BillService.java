package com.accp.spring.service;

import com.accp.spring.domain.Bill;
import com.accp.spring.mapper.BillMaper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BillService {

    @Autowired
    private BillMaper billmaper;

    public List<Bill> selectByAll(){
        return this.billmaper.selectByAll();
    }

    public Bill selectByOne(){
        return this.billmaper.getByALL();
    }
}
