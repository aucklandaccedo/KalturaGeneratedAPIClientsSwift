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

/**  Stats Service  */
public final class StatsService{

	public class CollectTokenizer: ClientTokenizer  {
		
		public var event: StatsEvent.StatsEventTokenizer {
			get {
				return StatsEvent.StatsEventTokenizer(self.append("event")) 
			}
		}
	}

	/**  Will write to the event log a single line representing the event   client
	  version - will help interprete the line structure. different client versions
	  might have slightly different data/data formats in the line event_id - number is
	  the row number in yuval's excel datetime - same format as MySql's datetime - can
	  change and should reflect the time zone session id - can be some big random
	  number or guid partner id entry id unique viewer widget id ui_conf id uid - the
	  puser id as set by the ppartner current point - in milliseconds duration -
	  milliseconds user ip process duration - in milliseconds control id seek new
	  point referrer       KalturaStatsEvent $event  */
	public static func collect(event: StatsEvent) -> RequestBuilder<Bool, BaseTokenizedObject, CollectTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, CollectTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, CollectTokenizer>(service: "stats", action: "collect")
			.setBody(key: "event", value: event)

		return request
	}

	public class KmcCollectTokenizer: ClientTokenizer  {
		
		public var kmcEvent: StatsKmcEvent.StatsKmcEventTokenizer {
			get {
				return StatsKmcEvent.StatsKmcEventTokenizer(self.append("kmcEvent")) 
			}
		}
	}

	/**  Will collect the kmcEvent sent form the KMC client   // this will actually be an
	  empty function because all events will be sent using GET and will anyway be
	  logged in the apache log  */
	public static func kmcCollect(kmcEvent: StatsKmcEvent) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "stats", action: "kmcCollect")
			.setBody(key: "kmcEvent", value: kmcEvent)

		return request
	}

	public class ReportDeviceCapabilitiesTokenizer: ClientTokenizer  {
		
		public var data: BaseTokenizedObject {
			get {
				return self.append("data") 
			}
		}
	}

	/**  Use this action to report device capabilities to the kaltura server.  */
	public static func reportDeviceCapabilities(data: String) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "stats", action: "reportDeviceCapabilities")
			.setBody(key: "data", value: data)

		return request
	}

	public class ReportErrorTokenizer: ClientTokenizer  {
		
		public var errorCode: BaseTokenizedObject {
			get {
				return self.append("errorCode") 
			}
		}
		
		public var errorMessage: BaseTokenizedObject {
			get {
				return self.append("errorMessage") 
			}
		}
	}

	/**  Use this action to report errors to the kaltura server.  */
	public static func reportError(errorCode: String, errorMessage: String) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "stats", action: "reportError")
			.setBody(key: "errorCode", value: errorCode)
			.setBody(key: "errorMessage", value: errorMessage)

		return request
	}

	public class ReportKceErrorTokenizer: ClientTokenizer  {
		
		public var kalturaCEError: CEError.CEErrorTokenizer {
			get {
				return CEError.CEErrorTokenizer(self.append("kalturaCEError")) 
			}
		}
	}

	public static func reportKceError(kalturaCEError: CEError) -> RequestBuilder<CEError, CEError.CEErrorTokenizer, ReportKceErrorTokenizer> {
		let request: RequestBuilder<CEError, CEError.CEErrorTokenizer, ReportKceErrorTokenizer> = RequestBuilder<CEError, CEError.CEErrorTokenizer, ReportKceErrorTokenizer>(service: "stats", action: "reportKceError")
			.setBody(key: "kalturaCEError", value: kalturaCEError)

		return request
	}
}
