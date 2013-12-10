package org.strategoxt.spoofax.minijava.strategies;

       import org.strategoxt.lang.JavaInteropRegisterer;
       import org.strategoxt.lang.Strategy;

       /**
        * Helper class for {@link java_strategy_0_0}.
        */
       public class InteropRegisterer extends JavaInteropRegisterer {

         public InteropRegisterer() {
           super(new Strategy[] { 
        		   execute_java_0_1.instance
           });
       
         }
       }
