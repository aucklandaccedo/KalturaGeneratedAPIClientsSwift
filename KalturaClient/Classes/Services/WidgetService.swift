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

/**  widget service for full widget management  */
public final class WidgetService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var widget: Widget.WidgetTokenizer {
			get {
				return Widget.WidgetTokenizer(self.append("widget")) 
			}
		}
	}

	/**  Add new widget, can be attached to entry or kshow   SourceWidget is ignored.  */
	public static func add(widget: Widget) -> RequestBuilder<Widget, Widget.WidgetTokenizer, AddTokenizer> {
		let request: RequestBuilder<Widget, Widget.WidgetTokenizer, AddTokenizer> = RequestBuilder<Widget, Widget.WidgetTokenizer, AddTokenizer>(service: "widget", action: "add")
			.setBody(key: "widget", value: widget)

		return request
	}

	public class CloneTokenizer: ClientTokenizer  {
		
		public var widget: Widget.WidgetTokenizer {
			get {
				return Widget.WidgetTokenizer(self.append("widget")) 
			}
		}
	}

	/**  Add widget based on existing widget.   Must provide valid sourceWidgetId  */
	public static func clone(widget: Widget) -> RequestBuilder<Widget, Widget.WidgetTokenizer, CloneTokenizer> {
		let request: RequestBuilder<Widget, Widget.WidgetTokenizer, CloneTokenizer> = RequestBuilder<Widget, Widget.WidgetTokenizer, CloneTokenizer>(service: "widget", action: "clone")
			.setBody(key: "widget", value: widget)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get widget by id  */
	public static func get(id: String) -> RequestBuilder<Widget, Widget.WidgetTokenizer, GetTokenizer> {
		let request: RequestBuilder<Widget, Widget.WidgetTokenizer, GetTokenizer> = RequestBuilder<Widget, Widget.WidgetTokenizer, GetTokenizer>(service: "widget", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public var filter: WidgetFilter.WidgetFilterTokenizer {
			get {
				return WidgetFilter.WidgetFilterTokenizer(self.append("filter")) 
			}
		}
		
		public var pager: FilterPager.FilterPagerTokenizer {
			get {
				return FilterPager.FilterPagerTokenizer(self.append("pager")) 
			}
		}
	}

	public static func list() -> RequestBuilder<WidgetListResponse, WidgetListResponse.WidgetListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: WidgetFilter?) -> RequestBuilder<WidgetListResponse, WidgetListResponse.WidgetListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Retrieve a list of available widget depends on the filter given  */
	public static func list(filter: WidgetFilter?, pager: FilterPager?) -> RequestBuilder<WidgetListResponse, WidgetListResponse.WidgetListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<WidgetListResponse, WidgetListResponse.WidgetListResponseTokenizer, ListTokenizer> = RequestBuilder<WidgetListResponse, WidgetListResponse.WidgetListResponseTokenizer, ListTokenizer>(service: "widget", action: "list")
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
		
		public var widget: Widget.WidgetTokenizer {
			get {
				return Widget.WidgetTokenizer(self.append("widget")) 
			}
		}
	}

	/**  Update exisiting widget  */
	public static func update(id: String, widget: Widget) -> RequestBuilder<Widget, Widget.WidgetTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Widget, Widget.WidgetTokenizer, UpdateTokenizer> = RequestBuilder<Widget, Widget.WidgetTokenizer, UpdateTokenizer>(service: "widget", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "widget", value: widget)

		return request
	}
}
