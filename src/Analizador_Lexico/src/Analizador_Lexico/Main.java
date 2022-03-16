/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Analizador_Lexico;

import java.io.File;

/**
 *
 * @author Ar1
 */
public class Main {
    /**
     * Carga de la ruta PATH de *.flex, en este caso se encuentra en GDrive
     * @param args
     */
    public static void main(String[] args) {
        String path = "C:/Users/Aceve/Google Drive/ONE STORE/UTN 2018/Sintaxis y Semantica/TPI/Lexer/Analizador_Lexico/src/Analizador_Lexico/Lexer.flex";
        ConstruirLEXER(path);
    }
    /**
     * Este metodo lo que realiza es crear un nuevo archivo, el cual contendrá las sentencias a analizar
     */
    private static void ConstruirLEXER(String path) {
        File file=new File(path);
        jflex.Main.generate(file);
    }
    
}
