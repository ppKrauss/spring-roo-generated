// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.petclinic;

import com.springsource.petclinic.T1;
import com.springsource.petclinic.T2;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect T1_Roo_DbManaged {
    
    @OneToMany(mappedBy = "id1")
    private Set<T2> T1.t2s;
    
    @Column(name = "a", columnDefinition = "int4")
    @NotNull
    private Integer T1.a;
    
    public Set<T2> T1.getT2s() {
        return t2s;
    }
    
    public void T1.setT2s(Set<T2> t2s) {
        this.t2s = t2s;
    }
    
    public Integer T1.getA() {
        return a;
    }
    
    public void T1.setA(Integer a) {
        this.a = a;
    }
    
}
