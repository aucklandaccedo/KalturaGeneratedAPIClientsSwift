// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platfroms allow them to do with
// text.
//
// Copyright (C) 2006-2017  Kaltura Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// @ignore
// ===================================================================================================

/**
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Will hold data from the Kaltura UI components to be passed on to the reports and
  analytics system  */
open class StatsKmcEvent: ObjectBase {

	public class StatsKmcEventTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var clientVer: BaseTokenizedObject {
			get {
				return self.append("clientVer") 
			}
		}
		
		public var kmcEventActionPath: BaseTokenizedObject {
			get {
				return self.append("kmcEventActionPath") 
			}
		}
		
		public var kmcEventType: BaseTokenizedObject {
			get {
				return self.append("kmcEventType") 
			}
		}
		
		public var eventTimestamp: BaseTokenizedObject {
			get {
				return self.append("eventTimestamp") 
			}
		}
		
		public var sessionId: BaseTokenizedObject {
			get {
				return self.append("sessionId") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var widgetId: BaseTokenizedObject {
			get {
				return self.append("widgetId") 
			}
		}
		
		public var uiconfId: BaseTokenizedObject {
			get {
				return self.append("uiconfId") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var userIp: BaseTokenizedObject {
			get {
				return self.append("userIp") 
			}
		}
	}

	public var clientVer: String? = nil
	public var kmcEventActionPath: String? = nil
	public var kmcEventType: StatsKmcEventType? = nil
	/**  the client's timestamp of this event  */
	public var eventTimestamp: Double? = nil
	/**  a unique string generated by the client that will represent the client-side
	  session: the primary component will pass it on to other components that sprout
	  from it  */
	public var sessionId: String? = nil
	public var partnerId: Int? = nil
	public var entryId: String? = nil
	public var widgetId: String? = nil
	public var uiconfId: Int? = nil
	/**  the partner's user id  */
	public var userId: String? = nil
	/**  will be retrieved from the request of the user  */
	public var userIp: String? = nil


	public func setMultiRequestToken(clientVer: String) {
		self.dict["clientVer"] = clientVer
	}
	
	public func setMultiRequestToken(kmcEventActionPath: String) {
		self.dict["kmcEventActionPath"] = kmcEventActionPath
	}
	
	public func setMultiRequestToken(kmcEventType: String) {
		self.dict["kmcEventType"] = kmcEventType
	}
	
	public func setMultiRequestToken(eventTimestamp: String) {
		self.dict["eventTimestamp"] = eventTimestamp
	}
	
	public func setMultiRequestToken(sessionId: String) {
		self.dict["sessionId"] = sessionId
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(widgetId: String) {
		self.dict["widgetId"] = widgetId
	}
	
	public func setMultiRequestToken(uiconfId: String) {
		self.dict["uiconfId"] = uiconfId
	}
	
	public func setMultiRequestToken(userId: String) {
		self.dict["userId"] = userId
	}
	
	public func setMultiRequestToken(userIp: String) {
		self.dict["userIp"] = userIp
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["clientVer"] != nil {
			clientVer = dict["clientVer"] as? String
		}
		if dict["kmcEventActionPath"] != nil {
			kmcEventActionPath = dict["kmcEventActionPath"] as? String
		}
		if dict["kmcEventType"] != nil {
			kmcEventType = StatsKmcEventType(rawValue: (dict["kmcEventType"] as? Int)!)
		}
		if dict["eventTimestamp"] != nil {
			eventTimestamp = dict["eventTimestamp"] as? Double
		}
		if dict["sessionId"] != nil {
			sessionId = dict["sessionId"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["widgetId"] != nil {
			widgetId = dict["widgetId"] as? String
		}
		if dict["uiconfId"] != nil {
			uiconfId = dict["uiconfId"] as? Int
		}
		if dict["userId"] != nil {
			userId = dict["userId"] as? String
		}
		if dict["userIp"] != nil {
			userIp = dict["userIp"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(clientVer != nil) {
			dict["clientVer"] = clientVer!
		}
		if(kmcEventActionPath != nil) {
			dict["kmcEventActionPath"] = kmcEventActionPath!
		}
		if(kmcEventType != nil) {
			dict["kmcEventType"] = kmcEventType!.rawValue
		}
		if(eventTimestamp != nil) {
			dict["eventTimestamp"] = eventTimestamp!
		}
		if(sessionId != nil) {
			dict["sessionId"] = sessionId!
		}
		if(partnerId != nil) {
			dict["partnerId"] = partnerId!
		}
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(widgetId != nil) {
			dict["widgetId"] = widgetId!
		}
		if(uiconfId != nil) {
			dict["uiconfId"] = uiconfId!
		}
		if(userId != nil) {
			dict["userId"] = userId!
		}
		return dict
	}
}

