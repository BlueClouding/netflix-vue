<template>
  <div class="MovieLabels">
    <span :class="['MovieLabels__rate', `MovieLabels__rate--${movieRateColor}`]">
      {{ movieRate }} <span class="MovieLabels__heart">👍</span>
    </span>
    <span class="MovieLabels__date">
      {{ movieReleaseDate }}
    </span>
  </div>
</template>

<script>
  export default {
    name: 'MovieLabels',
    props: {
      movie: {
        vote_average: Number,
        release_date: String,
        first_air_date: String,
      },
    },
    computed: {
      movieRate() {
        return Math.round(this.movie.vote_average * 10) + '%';
      },
      movieRateColor() {
        const percent = this.movie.vote_average * 10;
        if (percent < 60) return 'red';
        if (percent < 70) return 'yellow';
        return 'green';
      },
      movieReleaseDate() {
        return new Date(this.movie.release_date || this.movie.first_air_date).toLocaleDateString();
      },
    },
  }
</script>

<style lang="scss">
  @import 'MovieLabels';
</style>
