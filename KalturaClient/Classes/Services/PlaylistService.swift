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

/**  Playlist service lets you create,manage and play your playlists  Playlists could
  be static (containing a fixed list of entries) or dynamic (baseed on a filter)  */
public final class PlaylistService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var playlist: Playlist.PlaylistTokenizer {
			get {
				return Playlist.PlaylistTokenizer(self.append("playlist")) 
			}
		}
		
		public var updateStats: BaseTokenizedObject {
			get {
				return self.append("updateStats") 
			}
		}
	}

	public static func add(playlist: Playlist) -> RequestBuilder<Playlist, Playlist.PlaylistTokenizer, AddTokenizer> {
		return add(playlist: playlist, updateStats: false)
	}

	/**  Add new playlist   Note that all entries used in a playlist will become public
	  and may appear in KalturaNetwork  */
	public static func add(playlist: Playlist, updateStats: Bool?) -> RequestBuilder<Playlist, Playlist.PlaylistTokenizer, AddTokenizer> {
		let request: RequestBuilder<Playlist, Playlist.PlaylistTokenizer, AddTokenizer> = RequestBuilder<Playlist, Playlist.PlaylistTokenizer, AddTokenizer>(service: "playlist", action: "add")
			.setBody(key: "playlist", value: playlist)
			.setBody(key: "updateStats", value: updateStats)

		return request
	}

	public class CloneTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var newPlaylist: Playlist.PlaylistTokenizer {
			get {
				return Playlist.PlaylistTokenizer(self.append("newPlaylist")) 
			}
		}
	}

	public static func clone(id: String) -> RequestBuilder<Playlist, Playlist.PlaylistTokenizer, CloneTokenizer> {
		return clone(id: id, newPlaylist: nil)
	}

	/**  Clone an existing playlist  */
	public static func clone(id: String, newPlaylist: Playlist?) -> RequestBuilder<Playlist, Playlist.PlaylistTokenizer, CloneTokenizer> {
		let request: RequestBuilder<Playlist, Playlist.PlaylistTokenizer, CloneTokenizer> = RequestBuilder<Playlist, Playlist.PlaylistTokenizer, CloneTokenizer>(service: "playlist", action: "clone")
			.setBody(key: "id", value: id)
			.setBody(key: "newPlaylist", value: newPlaylist)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete existing playlist  */
	public static func delete(id: String) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "playlist", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	public class ExecuteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var detailed: BaseTokenizedObject {
			get {
				return self.append("detailed") 
			}
		}
		
		public var playlistContext: Context.ContextTokenizer {
			get {
				return Context.ContextTokenizer(self.append("playlistContext")) 
			}
		}
		
		public var filter: MediaEntryFilterForPlaylist.MediaEntryFilterForPlaylistTokenizer {
			get {
				return MediaEntryFilterForPlaylist.MediaEntryFilterForPlaylistTokenizer(self.append("filter")) 
			}
		}
		
		public var pager: FilterPager.FilterPagerTokenizer {
			get {
				return FilterPager.FilterPagerTokenizer(self.append("pager")) 
			}
		}
	}

	public static func execute(id: String) -> ArrayRequestBuilder<BaseEntry, ArrayTokenizedObject<BaseEntry.BaseEntryTokenizer>, ExecuteTokenizer> {
		return execute(id: id, detailed: "")
	}

	public static func execute(id: String, detailed: String?) -> ArrayRequestBuilder<BaseEntry, ArrayTokenizedObject<BaseEntry.BaseEntryTokenizer>, ExecuteTokenizer> {
		return execute(id: id, detailed: detailed, playlistContext: nil)
	}

	public static func execute(id: String, detailed: String?, playlistContext: Context?) -> ArrayRequestBuilder<BaseEntry, ArrayTokenizedObject<BaseEntry.BaseEntryTokenizer>, ExecuteTokenizer> {
		return execute(id: id, detailed: detailed, playlistContext: playlistContext, filter: nil)
	}

	public static func execute(id: String, detailed: String?, playlistContext: Context?, filter: MediaEntryFilterForPlaylist?) -> ArrayRequestBuilder<BaseEntry, ArrayTokenizedObject<BaseEntry.BaseEntryTokenizer>, ExecuteTokenizer> {
		return execute(id: id, detailed: detailed, playlistContext: playlistContext, filter: filter, pager: nil)
	}

	/**  Retrieve playlist for playing purpose  */
	public static func execute(id: String, detailed: String?, playlistContext: Context?, filter: MediaEntryFilterForPlaylist?, pager: FilterPager?) -> ArrayRequestBuilder<BaseEntry, ArrayTokenizedObject<BaseEntry.BaseEntryTokenizer>, ExecuteTokenizer> {
		let request: ArrayRequestBuilder<BaseEntry, ArrayTokenizedObject<BaseEntry.BaseEntryTokenizer>, ExecuteTokenizer> = ArrayRequestBuilder<BaseEntry, ArrayTokenizedObject<BaseEntry.BaseEntryTokenizer>, ExecuteTokenizer>(service: "playlist", action: "execute")
			.setBody(key: "id", value: id)
			.setBody(key: "detailed", value: detailed)
			.setBody(key: "playlistContext", value: playlistContext)
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class ExecuteFromContentTokenizer: ClientTokenizer  {
		
		public var playlistType: BaseTokenizedObject {
			get {
				return self.append("playlistType") 
			}
		}
		
		public var playlistContent: BaseTokenizedObject {
			get {
				return self.append("playlistContent") 
			}
		}
		
		public var detailed: BaseTokenizedObject {
			get {
				return self.append("detailed") 
			}
		}
		
		public var pager: FilterPager.FilterPagerTokenizer {
			get {
				return FilterPager.FilterPagerTokenizer(self.append("pager")) 
			}
		}
	}

	public static func executeFromContent(playlistType: PlaylistType, playlistContent: String) -> ArrayRequestBuilder<BaseEntry, ArrayTokenizedObject<BaseEntry.BaseEntryTokenizer>, ExecuteFromContentTokenizer> {
		return executeFromContent(playlistType: playlistType, playlistContent: playlistContent, detailed: "")
	}

	public static func executeFromContent(playlistType: PlaylistType, playlistContent: String, detailed: String?) -> ArrayRequestBuilder<BaseEntry, ArrayTokenizedObject<BaseEntry.BaseEntryTokenizer>, ExecuteFromContentTokenizer> {
		return executeFromContent(playlistType: playlistType, playlistContent: playlistContent, detailed: detailed, pager: nil)
	}

	/**  Retrieve playlist for playing purpose, based on content  */
	public static func executeFromContent(playlistType: PlaylistType, playlistContent: String, detailed: String?, pager: FilterPager?) -> ArrayRequestBuilder<BaseEntry, ArrayTokenizedObject<BaseEntry.BaseEntryTokenizer>, ExecuteFromContentTokenizer> {
		let request: ArrayRequestBuilder<BaseEntry, ArrayTokenizedObject<BaseEntry.BaseEntryTokenizer>, ExecuteFromContentTokenizer> = ArrayRequestBuilder<BaseEntry, ArrayTokenizedObject<BaseEntry.BaseEntryTokenizer>, ExecuteFromContentTokenizer>(service: "playlist", action: "executeFromContent")
			.setBody(key: "playlistType", value: playlistType.rawValue)
			.setBody(key: "playlistContent", value: playlistContent)
			.setBody(key: "detailed", value: detailed)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class ExecuteFromFiltersTokenizer: ClientTokenizer  {
		
		public var filters: ArrayTokenizedObject<MediaEntryFilterForPlaylist.MediaEntryFilterForPlaylistTokenizer> {
			get {
				return ArrayTokenizedObject<MediaEntryFilterForPlaylist.MediaEntryFilterForPlaylistTokenizer>(self.append("filters"))
			} 
		}
		
		public var totalResults: BaseTokenizedObject {
			get {
				return self.append("totalResults") 
			}
		}
		
		public var detailed: BaseTokenizedObject {
			get {
				return self.append("detailed") 
			}
		}
		
		public var pager: FilterPager.FilterPagerTokenizer {
			get {
				return FilterPager.FilterPagerTokenizer(self.append("pager")) 
			}
		}
	}

	public static func executeFromFilters(filters: Array<MediaEntryFilterForPlaylist>, totalResults: Int) -> ArrayRequestBuilder<BaseEntry, ArrayTokenizedObject<BaseEntry.BaseEntryTokenizer>, ExecuteFromFiltersTokenizer> {
		return executeFromFilters(filters: filters, totalResults: totalResults, detailed: "1")
	}

	public static func executeFromFilters(filters: Array<MediaEntryFilterForPlaylist>, totalResults: Int, detailed: String?) -> ArrayRequestBuilder<BaseEntry, ArrayTokenizedObject<BaseEntry.BaseEntryTokenizer>, ExecuteFromFiltersTokenizer> {
		return executeFromFilters(filters: filters, totalResults: totalResults, detailed: detailed, pager: nil)
	}

	/**  Revrieve playlist for playing purpose, based on media entry filters  */
	public static func executeFromFilters(filters: Array<MediaEntryFilterForPlaylist>, totalResults: Int, detailed: String?, pager: FilterPager?) -> ArrayRequestBuilder<BaseEntry, ArrayTokenizedObject<BaseEntry.BaseEntryTokenizer>, ExecuteFromFiltersTokenizer> {
		let request: ArrayRequestBuilder<BaseEntry, ArrayTokenizedObject<BaseEntry.BaseEntryTokenizer>, ExecuteFromFiltersTokenizer> = ArrayRequestBuilder<BaseEntry, ArrayTokenizedObject<BaseEntry.BaseEntryTokenizer>, ExecuteFromFiltersTokenizer>(service: "playlist", action: "executeFromFilters")
			.setBody(key: "filters", value: filters)
			.setBody(key: "totalResults", value: totalResults)
			.setBody(key: "detailed", value: detailed)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var version: BaseTokenizedObject {
			get {
				return self.append("version") 
			}
		}
	}

	public static func get(id: String) -> RequestBuilder<Playlist, Playlist.PlaylistTokenizer, GetTokenizer> {
		return get(id: id, version: -1)
	}

	/**  Retrieve a playlist  */
	public static func get(id: String, version: Int?) -> RequestBuilder<Playlist, Playlist.PlaylistTokenizer, GetTokenizer> {
		let request: RequestBuilder<Playlist, Playlist.PlaylistTokenizer, GetTokenizer> = RequestBuilder<Playlist, Playlist.PlaylistTokenizer, GetTokenizer>(service: "playlist", action: "get")
			.setBody(key: "id", value: id)
			.setBody(key: "version", value: version)

		return request
	}

	public class GetStatsFromContentTokenizer: ClientTokenizer  {
		
		public var playlistType: BaseTokenizedObject {
			get {
				return self.append("playlistType") 
			}
		}
		
		public var playlistContent: BaseTokenizedObject {
			get {
				return self.append("playlistContent") 
			}
		}
	}

	/**  Retrieve playlist statistics  */
	public static func getStatsFromContent(playlistType: PlaylistType, playlistContent: String) -> RequestBuilder<Playlist, Playlist.PlaylistTokenizer, GetStatsFromContentTokenizer> {
		let request: RequestBuilder<Playlist, Playlist.PlaylistTokenizer, GetStatsFromContentTokenizer> = RequestBuilder<Playlist, Playlist.PlaylistTokenizer, GetStatsFromContentTokenizer>(service: "playlist", action: "getStatsFromContent")
			.setBody(key: "playlistType", value: playlistType.rawValue)
			.setBody(key: "playlistContent", value: playlistContent)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public var filter: PlaylistFilter.PlaylistFilterTokenizer {
			get {
				return PlaylistFilter.PlaylistFilterTokenizer(self.append("filter")) 
			}
		}
		
		public var pager: FilterPager.FilterPagerTokenizer {
			get {
				return FilterPager.FilterPagerTokenizer(self.append("pager")) 
			}
		}
	}

	public static func list() -> RequestBuilder<PlaylistListResponse, PlaylistListResponse.PlaylistListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: PlaylistFilter?) -> RequestBuilder<PlaylistListResponse, PlaylistListResponse.PlaylistListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List available playlists  */
	public static func list(filter: PlaylistFilter?, pager: FilterPager?) -> RequestBuilder<PlaylistListResponse, PlaylistListResponse.PlaylistListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<PlaylistListResponse, PlaylistListResponse.PlaylistListResponseTokenizer, ListTokenizer> = RequestBuilder<PlaylistListResponse, PlaylistListResponse.PlaylistListResponseTokenizer, ListTokenizer>(service: "playlist", action: "list")
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
		
		public var playlist: Playlist.PlaylistTokenizer {
			get {
				return Playlist.PlaylistTokenizer(self.append("playlist")) 
			}
		}
		
		public var updateStats: BaseTokenizedObject {
			get {
				return self.append("updateStats") 
			}
		}
	}

	public static func update(id: String, playlist: Playlist) -> RequestBuilder<Playlist, Playlist.PlaylistTokenizer, UpdateTokenizer> {
		return update(id: id, playlist: playlist, updateStats: false)
	}

	/**  Update existing playlist   Note - you cannot change playlist type. updated
	  playlist must be of the same type.  */
	public static func update(id: String, playlist: Playlist, updateStats: Bool?) -> RequestBuilder<Playlist, Playlist.PlaylistTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Playlist, Playlist.PlaylistTokenizer, UpdateTokenizer> = RequestBuilder<Playlist, Playlist.PlaylistTokenizer, UpdateTokenizer>(service: "playlist", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "playlist", value: playlist)
			.setBody(key: "updateStats", value: updateStats)

		return request
	}
}
