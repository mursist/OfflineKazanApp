//
//  ReportListView.swift
//  OfflineKazanApp
//
//  Created on 2025
//

import SwiftUI

struct ReportListView: View {
    let sections = ReportData.sampleData
    
    var body: some View {
        List(sections) { section in
            NavigationLink(destination: ReportDetailView(section: section)) {
                ReportRowView(section: section)
            }
        }
        .navigationTitle("Girişim Raporu")
        .navigationBarTitleDisplayMode(.large)
    }
}

struct ReportRowView: View {
    let section: ReportSection
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(section.title)
                .font(.headline)
                .foregroundColor(.primary)
            
            Text(section.content)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .lineLimit(2)
            
            if !section.subsections.isEmpty {
                HStack {
                    Image(systemName: "list.bullet")
                        .font(.caption)
                        .foregroundColor(.blue)
                    Text("\(section.subsections.count) alt bölüm")
                        .font(.caption)
                        .foregroundColor(.blue)
                }
            }
        }
        .padding(.vertical, 4)
    }
}

struct ReportListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ReportListView()
        }
    }
}

