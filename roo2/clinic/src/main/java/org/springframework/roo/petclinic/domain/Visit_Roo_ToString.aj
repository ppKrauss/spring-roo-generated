// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.petclinic.domain;

import org.springframework.roo.petclinic.domain.Visit;

privileged aspect Visit_Roo_ToString {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Visit.toString() {
        return "Visit {" + 
                "description='" + description + '\'' + 
                ", visitDate='" + visitDate + '\'' + 
                ", id='" + id + '\'' + 
                ", version='" + version + '\'' + "}" + super.toString();
    }
    
}
