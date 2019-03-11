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
    }
    
    public static let shared = PeristenceManager()
    
    private let cdm = CoreDataManager.shared
    
    private init() {
        
    }
    
    public func newSite(_ name: String) throws -> Site {
        let siteEntity = try cdm.newSite(name)
        try cdm.save()
        return Site(id: siteEntity.id!,
                    name: siteEntity.name!,
                    createdDate: siteEntity.createdDate!,
                    updatedDate: siteEntity.updatedDate!)
    }
    
    public func update(site: Site) throws {
        
    }
    
    /*
    public func add(new ecoDatum: EcoDatum, to site: Site) throws {
        guard let site = try cdm.getSite(byId: site.id) else {
            throws PeristenceError.SiteNotFound
        }
        try cdm.newEcoDatum(site: )
        try cdm.save()
    }
 */
    
}
