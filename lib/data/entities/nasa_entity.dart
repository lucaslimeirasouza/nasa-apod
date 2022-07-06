import '../../domain/models/nasa_model.dart';

class NasaEntity extends NasaModel {
  NasaEntity({
    copyright,
    date,
    explanation,
    hdurl,
    mediaType,
    serviceVersion,
    title,
    url,
  }) : super(
          copyright: copyright,
          date: date,
          explanation: explanation,
          hdurl: hdurl,
          mediaType: mediaType,
          serviceVersion: serviceVersion,
          title: title,
          url: url,
        );

  factory NasaEntity.fromMap(Map<String, dynamic> json) => NasaEntity(
        copyright: json["copyright"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        explanation: json["explanation"],
        hdurl: json["hdurl"],
        mediaType: json["media_type"],
        serviceVersion: json["service_version"],
        title: json["title"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "copyright": copyright ?? null,
        "date": date == null
            ? null
            : "${date!.year.toString().padLeft(4, '0')}-${date!.month.toString().padLeft(2, '0')}-${date!.day.toString().padLeft(2, '0')}",
        "explanation": explanation ?? null,
        "hdurl": hdurl ?? null,
        "media_type": mediaType ?? null,
        "service_version": serviceVersion ?? null,
        "title": title ?? null,
        "url": url ?? null,
      };
}
