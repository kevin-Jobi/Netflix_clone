// import 'dart:convert';

// class MovieDetailedModel {
//     bool adult;
//     String backdropPath;
//     List<CreatedBy> createdBy;
//     List<int> episodeRunTime;
//     DateTime firstAirDate;
//     List<Genre> genres;
//     String homepage;
//     int id;
//     bool inProduction;
//     List<String> languages;
//     DateTime lastAirDate;
//     TEpisodeToAir lastEpisodeToAir;
//     String name;
//     TEpisodeToAir nextEpisodeToAir;
//     List<Network> networks;
//     int numberOfEpisodes;
//     int numberOfSeasons;
//     List<String> originCountry;
//     String originalLanguage;
//     String originalName;
//     String overview;
//     double popularity;
//     String posterPath;
//     List<Network> productionCompanies;
//     List<ProductionCountry> productionCountries;
//     List<Season> seasons;
//     List<SpokenLanguage> spokenLanguages;
//     String status;
//     String tagline;
//     String type;
//     double voteAverage;
//     int voteCount;

//     MovieDetailedModel({
//         required this.adult,
//         required this.backdropPath,
//         required this.createdBy,
//         required this.episodeRunTime,
//         required this.firstAirDate,
//         required this.genres,
//         required this.homepage,
//         required this.id,
//         required this.inProduction,
//         required this.languages,
//         required this.lastAirDate,
//         required this.lastEpisodeToAir,
//         required this.name,
//         required this.nextEpisodeToAir,
//         required this.networks,
//         required this.numberOfEpisodes,
//         required this.numberOfSeasons,
//         required this.originCountry,
//         required this.originalLanguage,
//         required this.originalName,
//         required this.overview,
//         required this.popularity,
//         required this.posterPath,
//         required this.productionCompanies,
//         required this.productionCountries,
//         required this.seasons,
//         required this.spokenLanguages,
//         required this.status,
//         required this.tagline,
//         required this.type,
//         required this.voteAverage,
//         required this.voteCount,
//     });

//     MovieDetailedModel copyWith({
//         bool? adult,
//         String? backdropPath,
//         List<CreatedBy>? createdBy,
//         List<int>? episodeRunTime,
//         DateTime? firstAirDate,
//         List<Genre>? genres,
//         String? homepage,
//         int? id,
//         bool? inProduction,
//         List<String>? languages,
//         DateTime? lastAirDate,
//         TEpisodeToAir? lastEpisodeToAir,
//         String? name,
//         TEpisodeToAir? nextEpisodeToAir,
//         List<Network>? networks,
//         int? numberOfEpisodes,
//         int? numberOfSeasons,
//         List<String>? originCountry,
//         String? originalLanguage,
//         String? originalName,
//         String? overview,
//         double? popularity,
//         String? posterPath,
//         List<Network>? productionCompanies,
//         List<ProductionCountry>? productionCountries,
//         List<Season>? seasons,
//         List<SpokenLanguage>? spokenLanguages,
//         String? status,
//         String? tagline,
//         String? type,
//         double? voteAverage,
//         int? voteCount,
//     }) => 
//         MovieDetailedModel(
//             adult: adult ?? this.adult,
//             backdropPath: backdropPath ?? this.backdropPath,
//             createdBy: createdBy ?? this.createdBy,
//             episodeRunTime: episodeRunTime ?? this.episodeRunTime,
//             firstAirDate: firstAirDate ?? this.firstAirDate,
//             genres: genres ?? this.genres,
//             homepage: homepage ?? this.homepage,
//             id: id ?? this.id,
//             inProduction: inProduction ?? this.inProduction,
//             languages: languages ?? this.languages,
//             lastAirDate: lastAirDate ?? this.lastAirDate,
//             lastEpisodeToAir: lastEpisodeToAir ?? this.lastEpisodeToAir,
//             name: name ?? this.name,
//             nextEpisodeToAir: nextEpisodeToAir ?? this.nextEpisodeToAir,
//             networks: networks ?? this.networks,
//             numberOfEpisodes: numberOfEpisodes ?? this.numberOfEpisodes,
//             numberOfSeasons: numberOfSeasons ?? this.numberOfSeasons,
//             originCountry: originCountry ?? this.originCountry,
//             originalLanguage: originalLanguage ?? this.originalLanguage,
//             originalName: originalName ?? this.originalName,
//             overview: overview ?? this.overview,
//             popularity: popularity ?? this.popularity,
//             posterPath: posterPath ?? this.posterPath,
//             productionCompanies: productionCompanies ?? this.productionCompanies,
//             productionCountries: productionCountries ?? this.productionCountries,
//             seasons: seasons ?? this.seasons,
//             spokenLanguages: spokenLanguages ?? this.spokenLanguages,
//             status: status ?? this.status,
//             tagline: tagline ?? this.tagline,
//             type: type ?? this.type,
//             voteAverage: voteAverage ?? this.voteAverage,
//             voteCount: voteCount ?? this.voteCount,
//         );

//     factory MovieDetailedModel.fromRawJson(String str) => MovieDetailedModel.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory MovieDetailedModel.fromJson(Map<String, dynamic> json) => MovieDetailedModel(
//         adult: json["adult"],
//         backdropPath: json["backdrop_path"],
//         createdBy: List<CreatedBy>.from(json["created_by"].map((x) => CreatedBy.fromJson(x))),
//         episodeRunTime: List<int>.from(json["episode_run_time"].map((x) => x)),
//         firstAirDate: DateTime.parse(json["first_air_date"]),
//         genres: List<Genre>.from(json["genres"].map((x) => Genre.fromJson(x))),
//         homepage: json["homepage"],
//         id: json["id"],
//         inProduction: json["in_production"],
//         languages: List<String>.from(json["languages"].map((x) => x)),
//         lastAirDate: DateTime.parse(json["last_air_date"]),
//         lastEpisodeToAir: TEpisodeToAir.fromJson(json["last_episode_to_air"]),
//         name: json["name"],
//         nextEpisodeToAir: TEpisodeToAir.fromJson(json["next_episode_to_air"]),
//         networks: List<Network>.from(json["networks"].map((x) => Network.fromJson(x))),
//         numberOfEpisodes: json["number_of_episodes"],
//         numberOfSeasons: json["number_of_seasons"],
//         originCountry: List<String>.from(json["origin_country"].map((x) => x)),
//         originalLanguage: json["original_language"],
//         originalName: json["original_name"],
//         overview: json["overview"],
//         popularity: json["popularity"]?.toDouble(),
//         posterPath: json["poster_path"],
//         productionCompanies: List<Network>.from(json["production_companies"].map((x) => Network.fromJson(x))),
//         productionCountries: List<ProductionCountry>.from(json["production_countries"].map((x) => ProductionCountry.fromJson(x))),
//         seasons: List<Season>.from(json["seasons"].map((x) => Season.fromJson(x))),
//         spokenLanguages: List<SpokenLanguage>.from(json["spoken_languages"].map((x) => SpokenLanguage.fromJson(x))),
//         status: json["status"],
//         tagline: json["tagline"],
//         type: json["type"],
//         voteAverage: json["vote_average"]?.toDouble(),
//         voteCount: json["vote_count"],
//     );

//     Map<String, dynamic> toJson() => {
//         "adult": adult,
//         "backdrop_path": backdropPath,
//         "created_by": List<dynamic>.from(createdBy.map((x) => x.toJson())),
//         "episode_run_time": List<dynamic>.from(episodeRunTime.map((x) => x)),
//         "first_air_date": "${firstAirDate.year.toString().padLeft(4, '0')}-${firstAirDate.month.toString().padLeft(2, '0')}-${firstAirDate.day.toString().padLeft(2, '0')}",
//         "genres": List<dynamic>.from(genres.map((x) => x.toJson())),
//         "homepage": homepage,
//         "id": id,
//         "in_production": inProduction,
//         "languages": List<dynamic>.from(languages.map((x) => x)),
//         "last_air_date": "${lastAirDate.year.toString().padLeft(4, '0')}-${lastAirDate.month.toString().padLeft(2, '0')}-${lastAirDate.day.toString().padLeft(2, '0')}",
//         "last_episode_to_air": lastEpisodeToAir.toJson(),
//         "name": name,
//         "next_episode_to_air": nextEpisodeToAir.toJson(),
//         "networks": List<dynamic>.from(networks.map((x) => x.toJson())),
//         "number_of_episodes": numberOfEpisodes,
//         "number_of_seasons": numberOfSeasons,
//         "origin_country": List<dynamic>.from(originCountry.map((x) => x)),
//         "original_language": originalLanguage,
//         "original_name": originalName,
//         "overview": overview,
//         "popularity": popularity,
//         "poster_path": posterPath,
//         "production_companies": List<dynamic>.from(productionCompanies.map((x) => x.toJson())),
//         "production_countries": List<dynamic>.from(productionCountries.map((x) => x.toJson())),
//         "seasons": List<dynamic>.from(seasons.map((x) => x.toJson())),
//         "spoken_languages": List<dynamic>.from(spokenLanguages.map((x) => x.toJson())),
//         "status": status,
//         "tagline": tagline,
//         "type": type,
//         "vote_average": voteAverage,
//         "vote_count": voteCount,
//     };
// }

// class CreatedBy {
//     int id;
//     String creditId;
//     String name;
//     String originalName;
//     int gender;
//     String profilePath;

//     CreatedBy({
//         required this.id,
//         required this.creditId,
//         required this.name,
//         required this.originalName,
//         required this.gender,
//         required this.profilePath,
//     });

//     CreatedBy copyWith({
//         int? id,
//         String? creditId,
//         String? name,
//         String? originalName,
//         int? gender,
//         String? profilePath,
//     }) => 
//         CreatedBy(
//             id: id ?? this.id,
//             creditId: creditId ?? this.creditId,
//             name: name ?? this.name,
//             originalName: originalName ?? this.originalName,
//             gender: gender ?? this.gender,
//             profilePath: profilePath ?? this.profilePath,
//         );

//     factory CreatedBy.fromRawJson(String str) => CreatedBy.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory CreatedBy.fromJson(Map<String, dynamic> json) => CreatedBy(
//         id: json["id"],
//         creditId: json["credit_id"],
//         name: json["name"],
//         originalName: json["original_name"],
//         gender: json["gender"],
//         profilePath: json["profile_path"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "credit_id": creditId,
//         "name": name,
//         "original_name": originalName,
//         "gender": gender,
//         "profile_path": profilePath,
//     };
// }

// class Genre {
//     int id;
//     String name;

//     Genre({
//         required this.id,
//         required this.name,
//     });

//     Genre copyWith({
//         int? id,
//         String? name,
//     }) => 
//         Genre(
//             id: id ?? this.id,
//             name: name ?? this.name,
//         );

//     factory Genre.fromRawJson(String str) => Genre.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Genre.fromJson(Map<String, dynamic> json) => Genre(
//         id: json["id"],
//         name: json["name"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//     };
// }

// class TEpisodeToAir {
//     int id;
//     String name;
//     String overview;
//     double voteAverage;
//     int voteCount;
//     DateTime airDate;
//     int episodeNumber;
//     String episodeType;
//     String productionCode;
//     int? runtime;
//     int seasonNumber;
//     int showId;
//     String? stillPath;

//     TEpisodeToAir({
//         required this.id,
//         required this.name,
//         required this.overview,
//         required this.voteAverage,
//         required this.voteCount,
//         required this.airDate,
//         required this.episodeNumber,
//         required this.episodeType,
//         required this.productionCode,
//         required this.runtime,
//         required this.seasonNumber,
//         required this.showId,
//         required this.stillPath,
//     });

//     TEpisodeToAir copyWith({
//         int? id,
//         String? name,
//         String? overview,
//         double? voteAverage,
//         int? voteCount,
//         DateTime? airDate,
//         int? episodeNumber,
//         String? episodeType,
//         String? productionCode,
//         int? runtime,
//         int? seasonNumber,
//         int? showId,
//         String? stillPath,
//     }) => 
//         TEpisodeToAir(
//             id: id ?? this.id,
//             name: name ?? this.name,
//             overview: overview ?? this.overview,
//             voteAverage: voteAverage ?? this.voteAverage,
//             voteCount: voteCount ?? this.voteCount,
//             airDate: airDate ?? this.airDate,
//             episodeNumber: episodeNumber ?? this.episodeNumber,
//             episodeType: episodeType ?? this.episodeType,
//             productionCode: productionCode ?? this.productionCode,
//             runtime: runtime ?? this.runtime,
//             seasonNumber: seasonNumber ?? this.seasonNumber,
//             showId: showId ?? this.showId,
//             stillPath: stillPath ?? this.stillPath,
//         );

//     factory TEpisodeToAir.fromRawJson(String str) => TEpisodeToAir.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory TEpisodeToAir.fromJson(Map<String, dynamic> json) => TEpisodeToAir(
//         id: json["id"],
//         name: json["name"],
//         overview: json["overview"],
//         voteAverage: json["vote_average"]?.toDouble(),
//         voteCount: json["vote_count"],
//         airDate: DateTime.parse(json["air_date"]),
//         episodeNumber: json["episode_number"],
//         episodeType: json["episode_type"],
//         productionCode: json["production_code"],
//         runtime: json["runtime"],
//         seasonNumber: json["season_number"],
//         showId: json["show_id"],
//         stillPath: json["still_path"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "overview": overview,
//         "vote_average": voteAverage,
//         "vote_count": voteCount,
//         "air_date": "${airDate.year.toString().padLeft(4, '0')}-${airDate.month.toString().padLeft(2, '0')}-${airDate.day.toString().padLeft(2, '0')}",
//         "episode_number": episodeNumber,
//         "episode_type": episodeType,
//         "production_code": productionCode,
//         "runtime": runtime,
//         "season_number": seasonNumber,
//         "show_id": showId,
//         "still_path": stillPath,
//     };
// }

// class Network {
//     int id;
//     String logoPath;
//     String name;
//     String originCountry;

//     Network({
//         required this.id,
//         required this.logoPath,
//         required this.name,
//         required this.originCountry,
//     });

//     Network copyWith({
//         int? id,
//         String? logoPath,
//         String? name,
//         String? originCountry,
//     }) => 
//         Network(
//             id: id ?? this.id,
//             logoPath: logoPath ?? this.logoPath,
//             name: name ?? this.name,
//             originCountry: originCountry ?? this.originCountry,
//         );

//     factory Network.fromRawJson(String str) => Network.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Network.fromJson(Map<String, dynamic> json) => Network(
//         id: json["id"],
//         logoPath: json["logo_path"],
//         name: json["name"],
//         originCountry: json["origin_country"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "logo_path": logoPath,
//         "name": name,
//         "origin_country": originCountry,
//     };
// }

// class ProductionCountry {
//     String iso31661;
//     String name;

//     ProductionCountry({
//         required this.iso31661,
//         required this.name,
//     });

//     ProductionCountry copyWith({
//         String? iso31661,
//         String? name,
//     }) => 
//         ProductionCountry(
//             iso31661: iso31661 ?? this.iso31661,
//             name: name ?? this.name,
//         );

//     factory ProductionCountry.fromRawJson(String str) => ProductionCountry.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory ProductionCountry.fromJson(Map<String, dynamic> json) => ProductionCountry(
//         iso31661: json["iso_3166_1"],
//         name: json["name"],
//     );

//     Map<String, dynamic> toJson() => {
//         "iso_3166_1": iso31661,
//         "name": name,
//     };
// }

// class Season {
//     DateTime airDate;
//     int episodeCount;
//     int id;
//     String name;
//     String overview;
//     String posterPath;
//     int seasonNumber;
//     double voteAverage;

//     Season({
//         required this.airDate,
//         required this.episodeCount,
//         required this.id,
//         required this.name,
//         required this.overview,
//         required this.posterPath,
//         required this.seasonNumber,
//         required this.voteAverage,
//     });

//     Season copyWith({
//         DateTime? airDate,
//         int? episodeCount,
//         int? id,
//         String? name,
//         String? overview,
//         String? posterPath,
//         int? seasonNumber,
//         double? voteAverage,
//     }) => 
//         Season(
//             airDate: airDate ?? this.airDate,
//             episodeCount: episodeCount ?? this.episodeCount,
//             id: id ?? this.id,
//             name: name ?? this.name,
//             overview: overview ?? this.overview,
//             posterPath: posterPath ?? this.posterPath,
//             seasonNumber: seasonNumber ?? this.seasonNumber,
//             voteAverage: voteAverage ?? this.voteAverage,
//         );

//     factory Season.fromRawJson(String str) => Season.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Season.fromJson(Map<String, dynamic> json) => Season(
//         airDate: DateTime.parse(json["air_date"]),
//         episodeCount: json["episode_count"],
//         id: json["id"],
//         name: json["name"],
//         overview: json["overview"],
//         posterPath: json["poster_path"],
//         seasonNumber: json["season_number"],
//         voteAverage: json["vote_average"]?.toDouble(),
//     );

//     Map<String, dynamic> toJson() => {
//         "air_date": "${airDate.year.toString().padLeft(4, '0')}-${airDate.month.toString().padLeft(2, '0')}-${airDate.day.toString().padLeft(2, '0')}",
//         "episode_count": episodeCount,
//         "id": id,
//         "name": name,
//         "overview": overview,
//         "poster_path": posterPath,
//         "season_number": seasonNumber,
//         "vote_average": voteAverage,
//     };
// }

// class SpokenLanguage {
//     String englishName;
//     String iso6391;
//     String name;

//     SpokenLanguage({
//         required this.englishName,
//         required this.iso6391,
//         required this.name,
//     });

//     SpokenLanguage copyWith({
//         String? englishName,
//         String? iso6391,
//         String? name,
//     }) => 
//         SpokenLanguage(
//             englishName: englishName ?? this.englishName,
//             iso6391: iso6391 ?? this.iso6391,
//             name: name ?? this.name,
//         );

//     factory SpokenLanguage.fromRawJson(String str) => SpokenLanguage.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory SpokenLanguage.fromJson(Map<String, dynamic> json) => SpokenLanguage(
//         englishName: json["english_name"],
//         iso6391: json["iso_639_1"],
//         name: json["name"],
//     );

//     Map<String, dynamic> toJson() => {
//         "english_name": englishName,
//         "iso_639_1": iso6391,
//         "name": name,
//     };
// }



import 'dart:convert';

class MovieDetailedModel {
    final bool? adult;
    final String? backdropPath;
    final List<CreatedBy>? createdBy;
    final List<int>? episodeRunTime;
    final DateTime? firstAirDate;
    final List<Genre>? genres;
    final String? homepage;
    final int? id;
    final bool? inProduction;
    final List<String>? languages;
    final DateTime? lastAirDate;
    final TEpisodeToAir? lastEpisodeToAir;
    final String? name;
    final TEpisodeToAir? nextEpisodeToAir;
    final List<Network>? networks;
    final int? numberOfEpisodes;
    final int? numberOfSeasons;
    final List<String>? originCountry;
    final String? originalLanguage;
    final String? originalName;
    final String? overview;
    final double? popularity;
    final String? posterPath;
    final List<Network>? productionCompanies;
    final List<ProductionCountry>? productionCountries;
    final List<Season>? seasons;
    final List<SpokenLanguage>? spokenLanguages;
    final String? status;
    final String? tagline;
    final String? type;
    final double? voteAverage;
    final int? voteCount;

    MovieDetailedModel({
        this.adult,
        this.backdropPath,
        this.createdBy,
        this.episodeRunTime,
        this.firstAirDate,
        this.genres,
        this.homepage,
        this.id,
        this.inProduction,
        this.languages,
        this.lastAirDate,
        this.lastEpisodeToAir,
        this.name,
        this.nextEpisodeToAir,
        this.networks,
        this.numberOfEpisodes,
        this.numberOfSeasons,
        this.originCountry,
        this.originalLanguage,
        this.originalName,
        this.overview,
        this.popularity,
        this.posterPath,
        this.productionCompanies,
        this.productionCountries,
        this.seasons,
        this.spokenLanguages,
        this.status,
        this.tagline,
        this.type,
        this.voteAverage,
        this.voteCount,
    });

    factory MovieDetailedModel.fromRawJson(String str) => MovieDetailedModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory MovieDetailedModel.fromJson(Map<String, dynamic> json) => MovieDetailedModel(
        adult: json["adult"],
        backdropPath: json["backdrop_path"],
        createdBy: json["created_by"] == null ? [] : List<CreatedBy>.from(json["created_by"].map((x) => CreatedBy.fromJson(x))),
        episodeRunTime: json["episode_run_time"] == null ? [] : List<int>.from(json["episode_run_time"].map((x) => x)),
        firstAirDate: json["first_air_date"] == null ? null : DateTime.tryParse(json["first_air_date"]),
        genres: json["genres"] == null ? [] : List<Genre>.from(json["genres"].map((x) => Genre.fromJson(x))),
        homepage: json["homepage"],
        id: json["id"],
        inProduction: json["in_production"],
        languages: json["languages"] == null ? [] : List<String>.from(json["languages"].map((x) => x)),
        lastAirDate: json["last_air_date"] == null ? null : DateTime.tryParse(json["last_air_date"]),
        lastEpisodeToAir: json["last_episode_to_air"] == null ? null : TEpisodeToAir.fromJson(json["last_episode_to_air"]),
        name: json["name"],
        nextEpisodeToAir: json["next_episode_to_air"] == null ? null : TEpisodeToAir.fromJson(json["next_episode_to_air"]),
        networks: json["networks"] == null ? [] : List<Network>.from(json["networks"].map((x) => Network.fromJson(x))),
        numberOfEpisodes: json["number_of_episodes"],
        numberOfSeasons: json["number_of_seasons"],
        originCountry: json["origin_country"] == null ? [] : List<String>.from(json["origin_country"].map((x) => x)),
        originalLanguage: json["original_language"],
        originalName: json["original_name"],
        overview: json["overview"],
        popularity: json["popularity"]?.toDouble(),
        posterPath: json["poster_path"],
        productionCompanies: json["production_companies"] == null ? [] : List<Network>.from(json["production_companies"].map((x) => Network.fromJson(x))),
        productionCountries: json["production_countries"] == null ? [] : List<ProductionCountry>.from(json["production_countries"].map((x) => ProductionCountry.fromJson(x))),
        seasons: json["seasons"] == null ? [] : List<Season>.from(json["seasons"].map((x) => Season.fromJson(x))),
        spokenLanguages: json["spoken_languages"] == null ? [] : List<SpokenLanguage>.from(json["spoken_languages"].map((x) => SpokenLanguage.fromJson(x))),
        status: json["status"],
        tagline: json["tagline"],
        type: json["type"],
        voteAverage: json["vote_average"]?.toDouble(),
        voteCount: json["vote_count"],
    );

    Map<String, dynamic> toJson() => {
        "adult": adult,
        "backdrop_path": backdropPath,
        "created_by": createdBy == null ? [] : List<dynamic>.from(createdBy!.map((x) => x.toJson())),
        "episode_run_time": episodeRunTime == null ? [] : List<dynamic>.from(episodeRunTime!.map((x) => x)),
        "first_air_date": firstAirDate?.toIso8601String(),
        "genres": genres == null ? [] : List<dynamic>.from(genres!.map((x) => x.toJson())),
        "homepage": homepage,
        "id": id,
        "in_production": inProduction,
        "languages": languages == null ? [] : List<dynamic>.from(languages!.map((x) => x)),
        "last_air_date": lastAirDate?.toIso8601String(),
        "last_episode_to_air": lastEpisodeToAir?.toJson(),
        "name": name,
        "next_episode_to_air": nextEpisodeToAir?.toJson(),
        "networks": networks == null ? [] : List<dynamic>.from(networks!.map((x) => x.toJson())),
        "number_of_episodes": numberOfEpisodes,
        "number_of_seasons": numberOfSeasons,
        "origin_country": originCountry == null ? [] : List<dynamic>.from(originCountry!.map((x) => x)),
        "original_language": originalLanguage,
        "original_name": originalName,
        "overview": overview,
        "popularity": popularity,
        "poster_path": posterPath,
        "production_companies": productionCompanies == null ? [] : List<dynamic>.from(productionCompanies!.map((x) => x.toJson())),
        "production_countries": productionCountries == null ? [] : List<dynamic>.from(productionCountries!.map((x) => x.toJson())),
        "seasons": seasons == null ? [] : List<dynamic>.from(seasons!.map((x) => x.toJson())),
        "spoken_languages": spokenLanguages == null ? [] : List<dynamic>.from(spokenLanguages!.map((x) => x.toJson())),
        "status": status,
        "tagline": tagline,
        "type": type,
        "vote_average": voteAverage,
        "vote_count": voteCount,
    };
}

class CreatedBy {
    final int? id;
    final String? creditId;
    final String? name;
    final String? originalName;
    final int? gender;
    final String? profilePath;

    CreatedBy({
        this.id,
        this.creditId,
        this.name,
        this.originalName,
        this.gender,
        this.profilePath,
    });

    factory CreatedBy.fromJson(Map<String, dynamic> json) => CreatedBy(
        id: json["id"],
        creditId: json["credit_id"],
        name: json["name"],
        originalName: json["original_name"],
        gender: json["gender"],
        profilePath: json["profile_path"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "credit_id": creditId,
        "name": name,
        "original_name": originalName,
        "gender": gender,
        "profile_path": profilePath,
    };
}

class Genre {
    final int? id;
    final String? name;

    Genre({
        this.id,
        this.name,
    });

    factory Genre.fromJson(Map<String, dynamic> json) => Genre(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}

class TEpisodeToAir {
    final int? id;
    final String? name;
    final String? overview;
    final double? voteAverage;
    final int? voteCount;
    final DateTime? airDate;
    final int? episodeNumber;
    final String? episodeType;
    final String? productionCode;
    final int? runtime;
    final int? seasonNumber;
    final int? showId;
    final String? stillPath;

    TEpisodeToAir({
        this.id,
        this.name,
        this.overview,
        this.voteAverage,
        this.voteCount,
        this.airDate,
        this.episodeNumber,
        this.episodeType,
        this.productionCode,
        this.runtime,
        this.seasonNumber,
        this.showId,
        this.stillPath,
    });

    factory TEpisodeToAir.fromJson(Map<String, dynamic> json) => TEpisodeToAir(
        id: json["id"],
        name: json["name"],
        overview: json["overview"],
        voteAverage: json["vote_average"]?.toDouble(),
        voteCount: json["vote_count"],
        airDate: json["air_date"] == null ? null : DateTime.tryParse(json["air_date"]),
        episodeNumber: json["episode_number"],
        episodeType: json["episode_type"],
        productionCode: json["production_code"],
        runtime: json["runtime"],
        seasonNumber: json["season_number"],
        showId: json["show_id"],
        stillPath: json["still_path"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "overview": overview,
        "vote_average": voteAverage,
        "vote_count": voteCount,
        "air_date": airDate?.toIso8601String(),
        "episode_number": episodeNumber,
        "episode_type": episodeType,
        "production_code": productionCode,
        "runtime": runtime,
        "season_number": seasonNumber,
        "show_id": showId,
        "still_path": stillPath,
    };
}

class Network {
    final int? id;
    final String? logoPath;
    final String? name;
    final String? originCountry;

    Network({
        this.id,
        this.logoPath,
        this.name,
        this.originCountry,
    });

    factory Network.fromJson(Map<String, dynamic> json) => Network(
        id: json["id"],
        logoPath: json["logo_path"],
        name: json["name"],
        originCountry: json["origin_country"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "logo_path": logoPath,
        "name": name,
        "origin_country": originCountry,
    };
}

class ProductionCountry {
    final String? iso31661;
    final String? name;

    ProductionCountry({
        this.iso31661,
        this.name,
    });

    factory ProductionCountry.fromJson(Map<String, dynamic> json) => ProductionCountry(
        iso31661: json["iso_3166_1"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "iso_3166_1": iso31661,
        "name": name,
    };
}

class Season {
    final DateTime? airDate;
    final int? episodeCount;
    final int? id;
    final String? name;
    final String? overview;
    final String? posterPath;
    final int? seasonNumber;
    final double? voteAverage;

    Season({
        this.airDate,
        this.episodeCount,
        this.id,
        this.name,
        this.overview,
        this.posterPath,
        this.seasonNumber,
        this.voteAverage,
    });

    factory Season.fromJson(Map<String, dynamic> json) => Season(
        airDate: json["air_date"] == null ? null : DateTime.tryParse(json["air_date"]),
        episodeCount: json["episode_count"],
        id: json["id"],
        name: json["name"],
        overview: json["overview"],
        posterPath: json["poster_path"],
        seasonNumber: json["season_number"],
        voteAverage: json["vote_average"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "air_date": airDate?.toIso8601String(),
        "episode_count": episodeCount,
        "id": id,
        "name": name,
        "overview": overview,
        "poster_path": posterPath,
        "season_number": seasonNumber,
        "vote_average": voteAverage,
    };
}

class SpokenLanguage {
    final String? englishName;
    final String? iso6391;
    final String? name;

    SpokenLanguage({
        this.englishName,
        this.iso6391,
        this.name,
    });

    factory SpokenLanguage.fromJson(Map<String, dynamic> json) => SpokenLanguage(
        englishName: json["english_name"],
        iso6391: json["iso_639_1"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "english_name": englishName,
        "iso_639_1": iso6391,
        "name": name,
    };
}