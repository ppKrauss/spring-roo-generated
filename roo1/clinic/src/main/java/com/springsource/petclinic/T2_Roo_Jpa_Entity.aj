// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.petclinic;

import com.springsource.petclinic.T2;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect T2_Roo_Jpa_Entity {
    
    declare @type: T2: @Entity;
    
    declare @type: T2: @Table(schema = "test", name = "t2");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer T2.id;
    
    public Integer T2.getId() {
        return this.id;
    }
    
    public void T2.setId(Integer id) {
        this.id = id;
    }
    
}
