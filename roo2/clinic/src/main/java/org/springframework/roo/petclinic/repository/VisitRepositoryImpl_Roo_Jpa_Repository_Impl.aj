// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.petclinic.repository;

import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.petclinic.domain.Pet;
import org.springframework.roo.petclinic.domain.QVisit;
import org.springframework.roo.petclinic.domain.Vet;
import org.springframework.roo.petclinic.domain.Visit;
import org.springframework.roo.petclinic.repository.VisitRepositoryCustom;
import org.springframework.roo.petclinic.repository.VisitRepositoryImpl;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

privileged aspect VisitRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: VisitRepositoryImpl implements VisitRepositoryCustom;
    
    declare @type: VisitRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     */
    private static final String VisitRepositoryImpl.DESCRIPTION = "description";
    
    /**
     * TODO Auto-generated attribute documentation
     */
    private static final String VisitRepositoryImpl.VISIT_DATE = "visitDate";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Visit> VisitRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QVisit visit = QVisit.visit;
        
        JPQLQuery<Visit> query = from(visit);
        
        Path<?>[] paths = new Path<?>[] {visit.description,visit.visitDate};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(DESCRIPTION, visit.description)
			.map(VISIT_DATE, visit.visitDate);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, visit);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pet
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Visit> VisitRepositoryImpl.findByPet(Pet pet, GlobalSearch globalSearch, Pageable pageable) {
        
        QVisit visit = QVisit.visit;
        
        JPQLQuery<Visit> query = from(visit);
        
        Assert.notNull(pet, "pet is required");
        
        query.where(visit.pet.eq(pet));
        Path<?>[] paths = new Path<?>[] {visit.description,visit.visitDate};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(DESCRIPTION, visit.description)
			.map(VISIT_DATE, visit.visitDate);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, visit);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param vet
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Visit> VisitRepositoryImpl.findByVet(Vet vet, GlobalSearch globalSearch, Pageable pageable) {
        
        QVisit visit = QVisit.visit;
        
        JPQLQuery<Visit> query = from(visit);
        
        Assert.notNull(vet, "vet is required");
        
        query.where(visit.vet.eq(vet));
        Path<?>[] paths = new Path<?>[] {visit.description,visit.visitDate};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(DESCRIPTION, visit.description)
			.map(VISIT_DATE, visit.visitDate);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, visit);
    }
    
}
