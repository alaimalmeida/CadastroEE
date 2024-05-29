/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package cadastroee.controller;

import cadastroee.model.Usuarios;
import java.util.List;
import jakarta.ejb.Local;

/**
 *
 * @author Alaim
 */
@Local
public interface UsuarioFacadeLocal {

    void create(Usuarios usuario);

    void edit(Usuarios usuario);

    void remove(Usuarios usuario);

    Usuarios find(Object id);

    List<Usuarios> findAll();

    List<Usuarios> findRange(int[] range);

    int count();
    
}
