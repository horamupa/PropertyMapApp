// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let locationJSON = try? newJSONDecoder().decode(LocationJSON.self, from: jsonData)

import Foundation

// MARK: - LocationJSON
struct LocationJSON: Codable {
    let id: Int
    let headline: String
    let fields: Fields
    let key: [String: String]
    let hasPremium: String
    let premiumFieldMetadata: PremiumFieldMetadata
    let referenceLinks: ReferenceLinks
    let streetview, birdseye: String
    let gmapsURL: String
    let spec: Spec
    let path: String
    let centroid: [Double]
    let geometry: Geometry
    let blexts: [JSONAny]
    let blextKey: BlextKey
    let bookmarked: String
    let bookmarks: [JSONAny]
    let context: [Context]
    let metadata: Metadata
    let notices: BlextKey
    let others: [JSONAny]
    let status: String
    let sources: [JSONAny]

    enum CodingKeys: String, CodingKey {
        case id, headline, fields, key
        case hasPremium = "has_premium"
        case premiumFieldMetadata = "premium_field_metadata"
        case referenceLinks = "reference_links"
        case streetview, birdseye
        case gmapsURL = "gmaps_url"
        case spec, path, centroid, geometry, blexts
        case blextKey = "blext_key"
        case bookmarked, bookmarks, context, metadata, notices, others, status, sources
    }
}

// MARK: - BlextKey
struct BlextKey: Codable {
}

// MARK: - Context
struct Context: Codable {
    let headline, name, path: String
    let category, active, versePath: String?

    enum CodingKeys: String, CodingKey {
        case headline, name, path, category, active
        case versePath = "verse_path"
    }
}

// MARK: - Fields
struct Fields: Codable {
    let parcelnumb, owner, address, scity: String
    let szip, usecode, parvaltype: String
    let parval, saleprice: Int
    let saledate, mailadd, mailCity, mailState2: String
    let mailZip, legaldesc, book, page: String
    let lot: String
    let sourceurl: String
    let gisacre: Double
    let parcNum2, deedRef: String
    let deedLink: String
    let lastMailedCGStatus, subPage, subBook, mapDate: String
    let schoolDistCode: String
    let llGisacre: Double
    let llGissqft: Int
    let lat, lon: String

    enum CodingKeys: String, CodingKey {
        case parcelnumb, owner, address, scity, szip, usecode, parvaltype, parval, saleprice, saledate, mailadd
        case mailCity = "mail_city"
        case mailState2 = "mail_state2"
        case mailZip = "mail_zip"
        case legaldesc, book, page, lot, sourceurl, gisacre
        case parcNum2 = "parc_num2"
        case deedRef = "deed_ref"
        case deedLink = "deed_link"
        case lastMailedCGStatus = "last_mailed_cg_status"
        case subPage = "sub_page"
        case subBook = "sub_book"
        case mapDate = "map_date"
        case schoolDistCode = "school_dist_code"
        case llGisacre = "ll_gisacre"
        case llGissqft = "ll_gissqft"
        case lat, lon
    }
}

// MARK: - Geometry
struct Geometry: Codable {
    let type: String
    let coordinates: [[[Double]]]
}

// MARK: - Metadata
struct Metadata: Codable {
    let headline, tableUpdated, lastRefresh: String

    enum CodingKeys: String, CodingKey {
        case headline
        case tableUpdated = "table_updated"
        case lastRefresh = "last_refresh"
    }
}

// MARK: - PremiumFieldMetadata
struct PremiumFieldMetadata: Codable {
    let llBldgFootprintSqft, llBldgCount: LbcsActivity
    let dpvStatus, dpvCodes, dpvNotes, dpvType: CassErrorno
    let cassErrorno: CassErrorno
    let rdi, uspsVacancy, uspsVacancyDate, lbcsActivity: LbcsActivity
    let lbcsActivityDesc, lbcsFunction, lbcsFunctionDesc: LbcsActivity

    enum CodingKeys: String, CodingKey {
        case llBldgFootprintSqft = "ll_bldg_footprint_sqft"
        case llBldgCount = "ll_bldg_count"
        case dpvStatus = "dpv_status"
        case dpvCodes = "dpv_codes"
        case dpvNotes = "dpv_notes"
        case dpvType = "dpv_type"
        case cassErrorno = "cass_errorno"
        case rdi
        case uspsVacancy = "usps_vacancy"
        case uspsVacancyDate = "usps_vacancy_date"
        case lbcsActivity = "lbcs_activity"
        case lbcsActivityDesc = "lbcs_activity_desc"
        case lbcsFunction = "lbcs_function"
        case lbcsFunctionDesc = "lbcs_function_desc"
    }
}

// MARK: - CassErrorno
struct CassErrorno: Codable {
    let type, human: String
    let tier: Tier
    let categories: [Tier]
    let examples: [String]?
}

enum Tier: String, Codable {
    case premium = "premium"
    case usps = "usps"
}

// MARK: - LbcsActivity
struct LbcsActivity: Codable {
    let type, human: String
    let lbcsActivityDescription: String?
    let link: String?
    let tier: Tier
    let categories: [String]
    let examples: [String]?

    enum CodingKeys: String, CodingKey {
        case type, human
        case lbcsActivityDescription = "description"
        case link, tier, categories, examples
    }
}

// MARK: - ReferenceLinks
struct ReferenceLinks: Codable {
    let lbcsActivity, lbcsFunction, lbcsOwnership, lbcsStructure: String
    let lbcsSite: String
    let plansLink, uspsVacancy, uspsVacancyDate, rdi: String

    enum CodingKeys: String, CodingKey {
        case lbcsActivity = "lbcs_activity"
        case lbcsFunction = "lbcs_function"
        case lbcsOwnership = "lbcs_ownership"
        case lbcsStructure = "lbcs_structure"
        case lbcsSite = "lbcs_site"
        case plansLink = "plans_link"
        case uspsVacancy = "usps_vacancy"
        case uspsVacancyDate = "usps_vacancy_date"
        case rdi
    }
}

// MARK: - Spec
struct Spec: Codable {
    let dataset, geoid, city: String
    let id: Int
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
