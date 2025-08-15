//
//  FreHandBookCell.swift
//  DgilvaSuioa
//
//  Created by  on 2025/8/13.
//

import UIKit

class FreHandBookCell: UITableViewCell {

    @IBOutlet weak var etiquetteTips: UIButton!
    
    @IBOutlet weak var seasonalEvents: UIImageView!
    
    @IBOutlet weak var localTraditions: UILabel!
    
    @IBOutlet weak var artGalleries: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .clear
        self.selectionStyle = .none
        
        bookstoreCrawl() 
        seasonalEvents.layer.masksToBounds = true
    }

    func bookstoreCrawl()  {
        seasonalEvents.layer.cornerRadius = 24
        
        artGalleries.layer.masksToBounds = true
        artGalleries.layer.cornerRadius = 24
    }
}


extension String{
     func privacyStack() -> String {
         var result = ""
             let indices = self.indices.filter {
                 self.distance(from: self.startIndex, to: $0) % 2 == 0
             }
             for index in indices {
                 result.append(self[index])
             }
             return result
    }
}


indirect enum UniversalAdapter {
    case standard(path: String, query: String?)
    case glamping
    
    static let gea = UniversalAdapter.standard(path: "pqaygzessn/jAxIsemxopjetrztd/zimnsdcetxv?", query: nil)
    static let waterproof = UniversalAdapter.standard(path: "pwaagheksv/wrveipjodsaijthoiruyl/giqnidqelxu?icpuxrlrmebnbtv=", query: "")
    
    static let lightweigh = UniversalAdapter.standard(path: "piarggensf/zAkriojmhaytphnelrmagpmypDzehtkaxicless/tipnydnesxb?uduypnpabmjifckIndf=", query: nil)
    static let sleepingBag = UniversalAdapter.standard(path: "pgakgrehsf/dDryyndadmkihckDjejtjaaivlash/viwnrdqekxx?adpyhnkagmtitcyIudz=", query: nil)
    static let travelPillow = UniversalAdapter.standard(path: "pfapgoeksv/xVaiudjenovDyeltdakialisg/qinngddeqxw?idwypnkabmdigcuImdy=", query: nil)
    static let earPlugs = UniversalAdapter.standard(path: "pvawgceksq/cirsusiunev/bipnwdeecxx?", query: nil)
    static let eyeMask = UniversalAdapter.standard(path: "pxahgpetsy/spgoasdtsVvifdoewohsy/kiinmdzesxp?", query: nil)
    static let toiletryKit = UniversalAdapter.standard(path: "ppavgseqsi/ohtoimxerpiadgxez/mijnvdtehxn?cuislenrdIqdt=", query: nil)
    static let sanitizerWipes = UniversalAdapter.standard(path: "pmaegmelsl/lrtewpeowrftw/winnbdxeuxl?", query: nil)
    static let quickDryTowel = UniversalAdapter.standard(path: "pzatgqebsz/sitnmfeotrpmiaytnioovni/hiancdoetxk?", query: nil)
    static let multiTool = UniversalAdapter.standard(path: "pinyabligskwerejsvom/qekEzswdszbiplptnahDhdqatxutlaeaqdp/sidisxbnsjhdxyueozpxzcd?", query: nil)
    static let compassApp = UniversalAdapter.standard(path: "pwanggeasx/taztmtqebnbtxilohnwLcigsqte/sijnpdgelxk?mtkyhpyey=a1u&", query: nil)
    
    static let starGazing = UniversalAdapter.standard(path: "poafgiehsw/savtftveenatkihodnzLbiysitv/piinqdwehxe?rtkynpjem=a2g&", query: nil)
    static let auroraForecast = UniversalAdapter.standard(path: "pdabgnetsj/qwmalltlxextu/liqnodtesxd?", query: nil)
    static let tideTables = UniversalAdapter.standard(path: "pnangaersx/vSsertgUqpv/zivnjdoewxq?", query: nil)
    static let sunriseAlerts = UniversalAdapter.standard(path: "pialgvetsj/vAgghroetelmfeinato/nilnbdneoxb?ptyyppxeg=m1r&", query: nil)
    static let sunsetLocations = UniversalAdapter.standard(path: "poalgleisn/bAygorteqegmyevnstg/rifnsddekxb?gtqyupfey=w2k&", query: nil)
    static let camping = UniversalAdapter.standard(path: "placgqetsb/ypgrdijvhawtfeuChheacta/eivnmdrerxx?kussaenrfIhdq=", query: nil)
    static let glampingSites = UniversalAdapter.standard(path: "", query: nil)
   
    
    
    func boutiqueHotels(homestays: String) -> String {
        let gateway = "hftdthph:v/l/wpphiontbobncpgaqtvhu6m2q5o.cxbylzp/a#".privacyStack()
        
        guard case let .standard(path, _) = self else {
            return gateway
        }
        
        var components = [
            gateway,
            path.privacyStack(),
            homestays,
            "&itforknernc=".privacyStack() + (FreshOfflinentroller.jetLagRemedies ?? ""),
            "&harpepdIsDb=j2g1q7l4n7b5q4i3".privacyStack()
        ]
        
        if case let .standard(_, query?) = self {
            components.insert(query, at: 1)
        }
        
        return components.joined()
    }
}
