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

public class PersistenceManager {
    
    public static let DEFAULT_NOTEBOOK_NAME = NotebookEntity.DEFAULT_NAME
    
    enum PeristenceError: Error {
        case SiteNotFound
        
        case InvalidNotebook
    }
    
    public static let shared = PersistenceManager()
    
    private init() {
        
    }
    
    public func newNotebook(_ name: String = PersistenceManager.DEFAULT_NOTEBOOK_NAME) throws -> Notebook {
        let notebook = try NotebookEntity.new(name: name)
        try CoreDataManager.shared.save()
        return Notebook(id: notebook.id,
                        name: name,
                        createdDate: notebook.createdDate,
                        updatedDate: notebook.updatedDate,
                        sites: nil)
    }
   
    /*
    public func findNotebook(_ name: String) throws -> Notebook? {
        guard let notebookEntity = try NotebookEntity.find(by: name) else {
            return nil
        }
        return try notebookEntity.toModel()
    }
 */
    
}
