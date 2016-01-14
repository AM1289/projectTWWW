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
    public String getErrName() {
        String errorname;
        switch (errorcode) {
            case 0: errorname="Ο φοιτητής δεν ανήκει στο τμήμα. Μόνο σπουδαστές στο τμήμα ΗΜΜΥ μπορουν να έχουν πρόσβαση στην εφαρμογή";
                    return(errorname);
            case 2: errorname="Το άθροισμα μαθημάτων που επιλέξατε ξεπερνάει το συνολικό εφικτό αριθμό των 18";
                    return(errorname);
                    case 3: errorname="Το άθροισμα μαθημάτων που επιλέξατε ξεπερνάει το συνολικό εφικτό αριθμό για το έτος, που είναι 18";
                    return(errorname);
            case 4: errorname="Το άθροισμα μαθημάτων που επιλέξατε ξεπερνάει το συνολικό εφικτό αριθμό για το έτος, που είναι 14";
                    return(errorname);
            case 5: errorname="Το άθροισμα μαθημάτων που επιλέξατε ξεπερνάει το συνολικό εφικτό αριθμό για το έτος, που είναι 5";
                    return(errorname);
           default: errorname="Default";
                    return(errorname);
        }
    }
    
            
    
    public int getErrCode(){
        return(errorcode);
    }
    
}
