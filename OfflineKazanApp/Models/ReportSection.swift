//
//  ReportSection.swift
//  OfflineKazanApp
//
//  Created on 2025
//

import Foundation

struct ReportSection: Identifiable, Codable {
    let id: UUID
    let title: String
    let content: String
    let subsections: [ReportSubsection]
    
    init(id: UUID = UUID(), title: String, content: String, subsections: [ReportSubsection] = []) {
        self.id = id
        self.title = title
        self.content = content
        self.subsections = subsections
    }
}

struct ReportSubsection: Identifiable, Codable {
    let id: UUID
    let title: String
    let content: String
    
    init(id: UUID = UUID(), title: String, content: String) {
        self.id = id
        self.title = title
        self.content = content
    }
}

struct ReportData {
    static let sampleData: [ReportSection] = [
        ReportSection(
            title: "Girişim Özeti",
            content: "Offline Kazan girişimi, offline pazarlama çözümleri sunan yenilikçi bir platformdur.",
            subsections: [
                ReportSubsection(title: "Misyon", content: "İşletmelerin offline pazarlama stratejilerini dijitalleştirmek ve optimize etmek."),
                ReportSubsection(title: "Vizyon", content: "Türkiye'nin önde gelen offline pazarlama çözümleri platformu olmak.")
            ]
        ),
        ReportSection(
            title: "Pazar Analizi",
            content: "Pazar analizi ve rekabet durumu hakkında detaylı bilgiler.",
            subsections: [
                ReportSubsection(title: "Hedef Pazar", content: "Küçük ve orta ölçekli işletmeler, yerel işletmeler."),
                ReportSubsection(title: "Rekabet Analizi", content: "Sektördeki mevcut çözümler ve rekabet durumu.")
            ]
        ),
        ReportSection(
            title: "Ürün ve Hizmetler",
            content: "Sunulan ürün ve hizmetlerin detaylı açıklaması.",
            subsections: [
                ReportSubsection(title: "Ana Ürünler", content: "Offline pazarlama araçları, analitik çözümler."),
                ReportSubsection(title: "Hizmetler", content: "Danışmanlık, eğitim, teknik destek.")
            ]
        ),
        ReportSection(
            title: "İş Modeli",
            content: "Gelir modeli ve iş stratejisi.",
            subsections: [
                ReportSubsection(title: "Gelir Kaynakları", content: "Abonelik modeli, komisyon, premium özellikler."),
                ReportSubsection(title: "Maliyet Yapısı", content: "Operasyonel maliyetler ve yatırım gereksinimleri.")
            ]
        ),
        ReportSection(
            title: "Finansal Projeksiyonlar",
            content: "Gelecek dönemlere ait finansal tahminler ve hedefler.",
            subsections: [
                ReportSubsection(title: "Gelir Projeksiyonları", content: "3 yıllık gelir tahminleri ve büyüme hedefleri."),
                ReportSubsection(title: "Yatırım İhtiyacı", content: "Başlangıç yatırımı ve finansman gereksinimleri.")
            ]
        ),
        ReportSection(
            title: "Ekip ve Organizasyon",
            content: "Kurucu ekip ve organizasyon yapısı.",
            subsections: [
                ReportSubsection(title: "Kurucu Ekip", content: "Ekip üyeleri ve sorumlulukları."),
                ReportSubsection(title: "Organizasyon Yapısı", content: "Departmanlar ve hiyerarşi.")
            ]
        ),
        ReportSection(
            title: "Risk Analizi",
            content: "Potansiyel riskler ve azaltma stratejileri.",
            subsections: [
                ReportSubsection(title: "Teknik Riskler", content: "Teknoloji ve geliştirme riskleri."),
                ReportSubsection(title: "Pazar Riskleri", content: "Pazar değişimleri ve rekabet riskleri.")
            ]
        ),
        ReportSection(
            title: "Yol Haritası",
            content: "Kısa ve uzun vadeli hedefler ve planlar.",
            subsections: [
                ReportSubsection(title: "Kısa Vadeli Hedefler", content: "İlk 6 ay içinde gerçekleştirilecek hedefler."),
                ReportSubsection(title: "Uzun Vadeli Hedefler", content: "3-5 yıllık stratejik hedefler.")
            ]
        )
    ]
}

