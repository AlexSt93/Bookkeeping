/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Александр
 */
@Entity
@Table(name = "category_list")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CategoryList.findAll", query = "SELECT c FROM CategoryList c"),
    @NamedQuery(name = "CategoryList.findById", query = "SELECT c FROM CategoryList c WHERE c.id = :id"),
    @NamedQuery(name = "CategoryList.findByCategoryid", query = "SELECT c FROM CategoryList c WHERE c.categoryid = :categoryid")})
public class CategoryList implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Category_id")
    private int categoryid;

    public CategoryList() {
    }

    public CategoryList(Integer id) {
        this.id = id;
    }

    public CategoryList(Integer id, int categoryid) {
        this.id = id;
        this.categoryid = categoryid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(int categoryid) {
        this.categoryid = categoryid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CategoryList)) {
            return false;
        }
        CategoryList other = (CategoryList) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.CategoryList[ id=" + id + " ]";
    }
    
}
