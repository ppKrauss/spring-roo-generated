// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.petclinic.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Version;
import org.springframework.roo.petclinic.domain.Pet;
import org.springframework.roo.petclinic.domain.Visit;
import org.springframework.util.Assert;

privileged aspect Pet_Roo_Jpa_Entity {
    
    declare @type: Pet: @Entity;
    
    /**
     * TODO Auto-generated attribute documentation
     */
    @Id
    @SequenceGenerator(name = "petGen", sequenceName = "PET_SEQ")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "petGen")
    @Column(name = "id")
    private Long Pet.id;
    
    /**
     * TODO Auto-generated attribute documentation
     */
    @Version
    @Column(name = "version")
    private Integer Pet.version;
    
    /**
     * TODO Auto-generated attribute documentation
     */
    private static final String Pet.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     */
    private static final String Pet.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long Pet.getId() {
        return this.id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     */
    public void Pet.setId(Long id) {
        this.id = id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Integer
     */
    public Integer Pet.getVersion() {
        return this.version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param version
     */
    public void Pet.setVersion(Integer version) {
        this.version = version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param visitsToAdd
     */
    public void Pet.addToVisits(Iterable<Visit> visitsToAdd) {
        Assert.notNull(visitsToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (Visit item : visitsToAdd) {
            this.visits.add(item);
            item.setPet(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param visitsToRemove
     */
    public void Pet.removeFromVisits(Iterable<Visit> visitsToRemove) {
        Assert.notNull(visitsToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (Visit item : visitsToRemove) {
            this.visits.remove(item);
            item.setPet(null);
        }
    }
    
}
