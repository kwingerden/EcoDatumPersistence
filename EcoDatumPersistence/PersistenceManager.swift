//
//  PersistenceManager.swift
//  EcoDatumPersistence
//
//  Created by Kenneth Wingerden on 3/2/19.
//  Copyright © 2019 Kenneth Wingerden. All rights reserved.
//

import Foundation
import EcoDatumCommon
import EcoDatumModel
import EcoDatumCoreData

public class PeristenceManager {
    
    enum PeristenceError: Error {
        case SiteNotFound
        case InvalidSiteLocation
    }
    
    public static let shared = PeristenceManager()
    
    private lazy var cdm: CoreDataManager = {
        return CoreDataManager.shared
    }()
    
    private init() {
        
    }
    
    public func new(site: Site) throws {
        
        try cdm.newSite(name: site.name)
        
    }
    
    public func update(site: Site) throws {
        
    }
    
    public func add(new ecoDatum: EcoDatum, to site: Site) throws {
        guard let site = try cdm.getSite(byId: site.id) else {
            throws PeristenceError.SiteNotFound
        }
        try cdm.newEcoDatum(site: )
        try cdm.save()
    }
    
}
