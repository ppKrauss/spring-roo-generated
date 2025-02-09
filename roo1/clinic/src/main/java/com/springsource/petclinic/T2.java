package com.springsource.petclinic;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "t2", schema = "test")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "id1" })
public class T2 {
}
