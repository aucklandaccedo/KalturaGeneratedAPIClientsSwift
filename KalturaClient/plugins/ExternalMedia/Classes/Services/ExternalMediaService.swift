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

/**  External media service lets you upload and manage embed codes and external
  playable content  */
public final class ExternalMediaService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var entry: ExternalMediaEntry.ExternalMediaEntryTokenizer {
			get {
				return ExternalMediaEntry.ExternalMediaEntryTokenizer(self.append("entry")) 
			}
		}
	}

	/**  Add external media entry  */
	public static func add(entry: ExternalMediaEntry) -> RequestBuilder<ExternalMediaEntry, ExternalMediaEntry.ExternalMediaEntryTokenizer, AddTokenizer> {
		let request: RequestBuilder<ExternalMediaEntry, ExternalMediaEntry.ExternalMediaEntryTokenizer, AddTokenizer> = RequestBuilder<ExternalMediaEntry, ExternalMediaEntry.ExternalMediaEntryTokenizer, AddTokenizer>(service: "externalmedia_externalmedia", action: "add")
			.setBody(key: "entry", value: entry)

		return request
	}

	public class CountTokenizer: ClientTokenizer  {
		
		public var filter: ExternalMediaEntryFilter.ExternalMediaEntryFilterTokenizer {
			get {
				return ExternalMediaEntryFilter.ExternalMediaEntryFilterTokenizer(self.append("filter")) 
			}
		}
	}

	public static func count() -> RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> {
		return count(filter: nil)
	}

	/**  Count media entries by filter.  */
	public static func count(filter: ExternalMediaEntryFilter?) -> RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> = RequestBuilder<Int, BaseTokenizedObject, CountTokenizer>(service: "externalmedia_externalmedia", action: "count")
			.setBody(key: "filter", value: filter)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete a external media entry.  */
	public static func delete(id: String) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "externalmedia_externalmedia", action: "delete")
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

	/**  Get external media entry by ID.  */
	public static func get(id: String) -> RequestBuilder<ExternalMediaEntry, ExternalMediaEntry.ExternalMediaEntryTokenizer, GetTokenizer> {
		let request: RequestBuilder<ExternalMediaEntry, ExternalMediaEntry.ExternalMediaEntryTokenizer, GetTokenizer> = RequestBuilder<ExternalMediaEntry, ExternalMediaEntry.ExternalMediaEntryTokenizer, GetTokenizer>(service: "externalmedia_externalmedia", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public var filter: ExternalMediaEntryFilter.ExternalMediaEntryFilterTokenizer {
			get {
				return ExternalMediaEntryFilter.ExternalMediaEntryFilterTokenizer(self.append("filter")) 
			}
		}
		
		public var pager: FilterPager.FilterPagerTokenizer {
			get {
				return FilterPager.FilterPagerTokenizer(self.append("pager")) 
			}
		}
	}

	public static func list() -> RequestBuilder<ExternalMediaEntryListResponse, ExternalMediaEntryListResponse.ExternalMediaEntryListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: ExternalMediaEntryFilter?) -> RequestBuilder<ExternalMediaEntryListResponse, ExternalMediaEntryListResponse.ExternalMediaEntryListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List media entries by filter with paging support.  */
	public static func list(filter: ExternalMediaEntryFilter?, pager: FilterPager?) -> RequestBuilder<ExternalMediaEntryListResponse, ExternalMediaEntryListResponse.ExternalMediaEntryListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ExternalMediaEntryListResponse, ExternalMediaEntryListResponse.ExternalMediaEntryListResponseTokenizer, ListTokenizer> = RequestBuilder<ExternalMediaEntryListResponse, ExternalMediaEntryListResponse.ExternalMediaEntryListResponseTokenizer, ListTokenizer>(service: "externalmedia_externalmedia", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var entry: ExternalMediaEntry.ExternalMediaEntryTokenizer {
			get {
				return ExternalMediaEntry.ExternalMediaEntryTokenizer(self.append("entry")) 
			}
		}
	}

	/**  Update external media entry. Only the properties that were set will be updated.  */
	public static func update(id: String, entry: ExternalMediaEntry) -> RequestBuilder<ExternalMediaEntry, ExternalMediaEntry.ExternalMediaEntryTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<ExternalMediaEntry, ExternalMediaEntry.ExternalMediaEntryTokenizer, UpdateTokenizer> = RequestBuilder<ExternalMediaEntry, ExternalMediaEntry.ExternalMediaEntryTokenizer, UpdateTokenizer>(service: "externalmedia_externalmedia", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "entry", value: entry)

		return request
	}
}
