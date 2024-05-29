/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package cadastroee.controller;

import cadastroee.model.Pessoas;
import java.util.List;
import jakarta.ejb.Local;

/**
 *
 * @author Alaim
 */
@Local
public interface PessoaFacadeLocal {

    void create(Pessoas pessoa);

    void edit(Pessoas pessoa);

    void remove(Pessoas pessoa);

    Pessoas find(Object id);

    List<Pessoas> findAll();

    List<Pessoas> findRange(int[] range);

    int count();
    
}
