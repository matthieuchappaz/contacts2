//
//  AppDelegate.swift
//  contacts2
//
//  Created by Matthieu Chappaz on 08/03/2017.
//  Copyright © 2017 Matthieu Chappaz. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        tp2()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    func tp2() {
        
        // Print Hello World
        print("Hello World!")
        
        // Utiliser des variables
        let nom = "Chappaz"
        let prenoms = ["Matthieu","Nicolas","Yvon"]
        var dateNaissance :Date?;
        dateNaissance = nil;
        
        
        //1 Initialiser un DateCoponents avec les bonnes valeurs de jour/mois/annee
        var dateNaissanceComponents = DateComponents();
        dateNaissanceComponents.day = 21;
        dateNaissanceComponents.month = 04;
        dateNaissanceComponents.year = 1990;
        
        
        //2. Récupérer une instance du calendrier courant (sur Calendar)
        let calendar = Calendar.current;
        
        
        //3. Instancier la date à partir de ses composantes dans le calendrier récupéré
        dateNaissance = calendar.date(from: dateNaissanceComponents);
        
        var moi = Dictionary<String, String>();
        moi["nom"] = nom;
        
        var fullPrenoms = "";
        for prenom in prenoms {
            fullPrenoms += (prenom + " ");
        }
        moi["prenoms"] = fullPrenoms;
        
        let dateFormatter = DateFormatter();
        dateFormatter.dateStyle = .medium;
        moi["dateNaissance"] = dateFormatter.string(from: dateNaissance!);
        
        
        print("je suis \(moi)");
        
        // Faire la même chose avec une classe
        let moi2 = Person(prenom: "Matthieu")
        moi2.nom = "Chappaz"
        moi2.dateNaissance = dateNaissance!
        print(moi2)

    }

}

