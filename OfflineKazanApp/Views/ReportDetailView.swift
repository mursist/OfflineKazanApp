//
//  ReportDetailView.swift
//  OfflineKazanApp
//
//  Created on 2025
//

import SwiftUI

struct ReportDetailView: View {
    let section: ReportSection
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Ana İçerik
                VStack(alignment: .leading, spacing: 12) {
                    Text(section.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 8)
                    
                    Text(section.content)
                        .font(.body)
                        .lineSpacing(6)
                        .foregroundColor(.primary)
                }
                .padding(.horizontal)
                .padding(.top)
                
                // Alt Bölümler
                if !section.subsections.isEmpty {
                    VStack(alignment: .leading, spacing: 16) {
                        Divider()
                            .padding(.horizontal)
                        
                        Text("Alt Bölümler")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                        
                        ForEach(section.subsections) { subsection in
                            SubsectionCard(subsection: subsection)
                        }
                    }
                    .padding(.top, 8)
                }
            }
        }
        .navigationTitle(section.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SubsectionCard: View {
    let subsection: ReportSubsection
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: "doc.text")
                    .foregroundColor(.blue)
                    .font(.title3)
                
                Text(subsection.title)
                    .font(.headline)
                    .foregroundColor(.primary)
            }
            
            Text(subsection.content)
                .font(.body)
                .foregroundColor(.secondary)
                .lineSpacing(4)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .padding(.horizontal)
    }
}

struct ReportDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ReportDetailView(section: ReportData.sampleData[0])
        }
    }
}

