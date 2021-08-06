module MoviesHelper
  def embed_youtube(url)
    tag.iframe(
      width: 560,
      height: 315,
      src: url,
      frameborder: 0,
      allow: "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture",
      allowfullscreen: true
    )
  end

  def watched_by?(user)
    watch_progresses.exists?(user_id: user.id)
  end
end
