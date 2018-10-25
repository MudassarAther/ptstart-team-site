<?php

/**
 * @author Dejan
 * @since  Oct 25, 2018
 */

namespace App\Models\Pseudo;

use Igaster\LaravelCities\Geo;

class Location {

	/*
	 * get cities all around the world
	 */
	public static function all() {
		$cities = Geo::level(Geo::LEVEL_2)
			->orderBy('name','ASC')
			->get();
		$states = Geo::level(Geo::LEVEL_1)
			->orderBy('name','ASC')
			->get();
		return $states->merge($cities);
	}

	/**
	 *
	 */
	public static function find($keyword) {
		$cities = Geo::level(Geo::LEVEL_2)
			->where('name', 'like', '%' . $keyword . '%')
			->orderBy('name','ASC')
			->get();
		$states = Geo::level(Geo::LEVEL_1)
			->orderBy('name','ASC')
			->where('name', 'like', '%' . $keyword . '%')
			->get();
		$locations = $states->merge($cities);
		$locations = array_map(function($location) {
			$object = json_decode(json_encode($location), FALSE);
			$object->text = $object->name;
			return $object;
		}, iterator_to_array($locations));

		if (empty($keyword) || $keyword === '') {
			$all = '{"id": 0, "text": "All"}';
			$all = json_decode($all);
			array_unshift($locations, $all);
		}
		return $locations;
	}

	/**
	 *
	 */
	public static function findIdsWithParent($location_id) {
		$children = Geo::where('parent_id', $location_id)->get();
		if (empty($children) || $children->count() === 0) {
			return array($location_id);
		}
		$result = array();
		$result = array_merge($result, $children->toArray());

		foreach ($children as $child) {
			$grand_children = Geo::where('parent_id', $child->id)->get();
			$result = array_merge($result, $grand_children->toArray());
		}

		$ids = array_column($result, 'id');
		array_push($ids, $location_id);

		return $ids;
	}
}
