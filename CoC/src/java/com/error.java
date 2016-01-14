/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

/**
 *
 * @author DP
 */
public class error {
    static int errorcode;
    public error(){
        
    };
    public error(int errcode){
        errorcode=errcode;
    };
    public void setErrCode(int newerrcode) {
        errorcode = newerrcode;
    }
    public int getErrCode(){
        return(errorcode);
    }
    
}
