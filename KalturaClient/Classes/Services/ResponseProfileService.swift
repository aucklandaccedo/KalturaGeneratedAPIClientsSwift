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

/**  Manage response profiles  */
public final class ResponseProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var addResponseProfile: ResponseProfile.ResponseProfileTokenizer {
			get {
				return ResponseProfile.ResponseProfileTokenizer(self.append("addResponseProfile")) 
			}
		}
	}

	/**  Add new response profile  */
	public static func add(addResponseProfile: ResponseProfile) -> RequestBuilder<ResponseProfile, ResponseProfile.ResponseProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<ResponseProfile, ResponseProfile.ResponseProfileTokenizer, AddTokenizer> = RequestBuilder<ResponseProfile, ResponseProfile.ResponseProfileTokenizer, AddTokenizer>(service: "responseprofile", action: "add")
			.setBody(key: "addResponseProfile", value: addResponseProfile)

		return request
	}

	public class CloneTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var profile: ResponseProfile.ResponseProfileTokenizer {
			get {
				return ResponseProfile.ResponseProfileTokenizer(self.append("profile")) 
			}
		}
	}

	/**  Clone an existing response profile  */
	public static func clone(id: Int, profile: ResponseProfile) -> RequestBuilder<ResponseProfile, ResponseProfile.ResponseProfileTokenizer, CloneTokenizer> {
		let request: RequestBuilder<ResponseProfile, ResponseProfile.ResponseProfileTokenizer, CloneTokenizer> = RequestBuilder<ResponseProfile, ResponseProfile.ResponseProfileTokenizer, CloneTokenizer>(service: "responseprofile", action: "clone")
			.setBody(key: "id", value: id)
			.setBody(key: "profile", value: profile)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete response profile by id  */
	public static func delete(id: Int) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "responseprofile", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get response profile by id  */
	public static func get(id: Int) -> RequestBuilder<ResponseProfile, ResponseProfile.ResponseProfileTokenizer, GetTokenizer> {
		let request: RequestBuilder<ResponseProfile, ResponseProfile.ResponseProfileTokenizer, GetTokenizer> = RequestBuilder<ResponseProfile, ResponseProfile.ResponseProfileTokenizer, GetTokenizer>(service: "responseprofile", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public var filter: ResponseProfileFilter.ResponseProfileFilterTokenizer {
			get {
				return ResponseProfileFilter.ResponseProfileFilterTokenizer(self.append("filter")) 
			}
		}
		
		public var pager: FilterPager.FilterPagerTokenizer {
			get {
				return FilterPager.FilterPagerTokenizer(self.append("pager")) 
			}
		}
	}

	public static func list() -> RequestBuilder<ResponseProfileListResponse, ResponseProfileListResponse.ResponseProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: ResponseProfileFilter?) -> RequestBuilder<ResponseProfileListResponse, ResponseProfileListResponse.ResponseProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List response profiles by filter and pager  */
	public static func list(filter: ResponseProfileFilter?, pager: FilterPager?) -> RequestBuilder<ResponseProfileListResponse, ResponseProfileListResponse.ResponseProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ResponseProfileListResponse, ResponseProfileListResponse.ResponseProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<ResponseProfileListResponse, ResponseProfileListResponse.ResponseProfileListResponseTokenizer, ListTokenizer>(service: "responseprofile", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class RecalculateTokenizer: ClientTokenizer  {
		
		public var options: ResponseProfileCacheRecalculateOptions.ResponseProfileCacheRecalculateOptionsTokenizer {
			get {
				return ResponseProfileCacheRecalculateOptions.ResponseProfileCacheRecalculateOptionsTokenizer(self.append("options")) 
			}
		}
	}

	/**  Recalculate response profile cached objects  */
	public static func recalculate(options: ResponseProfileCacheRecalculateOptions) -> RequestBuilder<ResponseProfileCacheRecalculateResults, ResponseProfileCacheRecalculateResults.ResponseProfileCacheRecalculateResultsTokenizer, RecalculateTokenizer> {
		let request: RequestBuilder<ResponseProfileCacheRecalculateResults, ResponseProfileCacheRecalculateResults.ResponseProfileCacheRecalculateResultsTokenizer, RecalculateTokenizer> = RequestBuilder<ResponseProfileCacheRecalculateResults, ResponseProfileCacheRecalculateResults.ResponseProfileCacheRecalculateResultsTokenizer, RecalculateTokenizer>(service: "responseprofile", action: "recalculate")
			.setBody(key: "options", value: options)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var updateResponseProfile: ResponseProfile.ResponseProfileTokenizer {
			get {
				return ResponseProfile.ResponseProfileTokenizer(self.append("updateResponseProfile")) 
			}
		}
	}

	/**  Update response profile by id  */
	public static func update(id: Int, updateResponseProfile: ResponseProfile) -> RequestBuilder<ResponseProfile, ResponseProfile.ResponseProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<ResponseProfile, ResponseProfile.ResponseProfileTokenizer, UpdateTokenizer> = RequestBuilder<ResponseProfile, ResponseProfile.ResponseProfileTokenizer, UpdateTokenizer>(service: "responseprofile", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "updateResponseProfile", value: updateResponseProfile)

		return request
	}

	public class UpdateStatusTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
	}

	/**  Update response profile status by id  */
	public static func updateStatus(id: Int, status: ResponseProfileStatus) -> RequestBuilder<ResponseProfile, ResponseProfile.ResponseProfileTokenizer, UpdateStatusTokenizer> {
		let request: RequestBuilder<ResponseProfile, ResponseProfile.ResponseProfileTokenizer, UpdateStatusTokenizer> = RequestBuilder<ResponseProfile, ResponseProfile.ResponseProfileTokenizer, UpdateStatusTokenizer>(service: "responseprofile", action: "updateStatus")
			.setBody(key: "id", value: id)
			.setBody(key: "status", value: status.rawValue)

		return request
	}
}
