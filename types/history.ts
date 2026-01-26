export interface Work {
  id: number
  name: string
  authors: string[]
  thumbnailUrl?: string
  description: string
  linkToContent?: string
}

export interface Event {
  title: string
  times: number
  works: Work[]
}

export interface History {
  events: Event[]
}
