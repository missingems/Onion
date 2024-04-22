//
//  Onion+Stubs.swift
//  OnionDemoApp
//
//  Created by Jun on 18/4/24.
//

import Onion

extension Message {
  static var stubs: [Onion<Message>] {
    [
      Onion<Message>(
        layer: Message(
          author: Author(
            name: "Jun",
            avatarImageName: "jun"
          ),
          message: "(笑) それはショーでとても大きなどんでん返しになっただろう 👀"
        ),
        onions: [
          Onion<Message>(
            layer: Message(
              author: Author(
                name: "Xen",
                avatarImageName: "xen"
              ),
              message: "ああいうプロットのひねりがあればよかった"
            ),
            onions: [
              Onion(
                layer: Message(
                  author: Author(
                    name: "Gene",
                    avatarImageName: "gene"
                  ),
                  message: "意味がなかったでしょう"
                ),
                onions: [
                  Onion(
                    layer: Message(
                      author: Author(
                        name: "Ickcee",
                        avatarImageName: "ickcee"
                      ),
                      message: "その通り"
                    )
                  )
                ]
              )
            ]
          )
        ]
      ),
      Onion<Message>(
        layer: Message(
          author: Author(
            name: "Gene",
            avatarImageName: "gene"
          ),
          message: "タイタンの起源やシフターは誰なのかなどについて理論を立てていた日々が懐かしいです。ほとんどすべての暴露は理論よりも優れていましたが、あなたの理論はかなり素晴らしいです。"
        ),
        onions: [
          Onion<Message>(
            layer: Message(
              author: Author(
                name: "Jun",
                avatarImageName: "jun"
              ),
              message: "(笑) それはショーでとても大きなどんでん返しになっただろう 👀"
            ),
            onions: [
              Onion<Message>(
                layer: Message(
                  author: Author(
                    name: "Xen",
                    avatarImageName: "xen"
                  ),
                  message: "ああいうプロットのひねりがあればよかった"
                ),
                onions: [
                  Onion(
                    layer: Message(
                      author: Author(
                        name: "Gene",
                        avatarImageName: "gene"
                      ),
                      message: "意味がなかったでしょう"
                    ),
                    onions: [
                      Onion(
                        layer: Message(
                          author: Author(
                            name: "Ickcee",
                            avatarImageName: "ickcee"
                          ),
                          message: "その通り"
                        )
                      )
                    ]
                  )
                ]
              )
            ]
          ),
          Onion<Message>(
            layer: Message(
              author: Author(
                name: "Gene",
                avatarImageName: "gene"
              ),
              message: "タイタンの起源やシフターは誰なのかなどについて理論を立てていた日々が懐かしいです。ほとんどすべての暴露は理論よりも優れていましたが、あなたの理論はかなり素晴らしいです。"
            )
          ),
          Onion<Message>(
            layer: Message(
              author: Author(
                name: "Xen",
                avatarImageName: "xen"
              ),
              message: "私たちの多くは彼が巨大なタイタンだと思っていたのを覚えています。 古き良き時代。"
            ),
            onions: [
              Onion<Message>(
                layer: Message(
                  author: Author(
                    name: "Gene",
                    avatarImageName: "gene"
                  ),
                  message: "ピクシス将軍が超大型巨人だと思ってた"
                ),
                onions: [
                  Onion<Message>(
                    layer: Message(
                      author: Author(
                        name: "Xen",
                        avatarImageName: "xen"
                      ),
                      message: "たぶん彼がハゲだったと思います。"
                    ),
                    onions: [
                      Onion<Message>(
                        layer: Message(
                          author: Author(
                            name: "Jun",
                            avatarImageName: "jun"
                          ),
                          message: "(笑) それはショーでとても大きなどんでん返しになっただろう 👀"
                        ),
                        onions: [
                          Onion<Message>(
                            layer: Message(
                              author: Author(
                                name: "Xen",
                                avatarImageName: "xen"
                              ),
                              message: "ああいうプロットのひねりがあればよかった"
                            ),
                            onions: [
                              Onion(
                                layer: Message(
                                  author: Author(
                                    name: "Gene",
                                    avatarImageName: "gene"
                                  ),
                                  message: "意味がなかったでしょう"
                                ),
                                onions: [
                                  Onion(
                                    layer: Message(
                                      author: Author(
                                        name: "Ickcee",
                                        avatarImageName: "ickcee"
                                      ),
                                      message: "その通り"
                                    )
                                  )
                                ]
                              )
                            ]
                          )
                        ]
                      ),
                      Onion<Message>(
                        layer: Message(
                          author: Author(
                            name: "Gene",
                            avatarImageName: "gene"
                          ),
                          message: "タイタンの起源やシフターは誰なのかなどについて理論を立てていた日々が懐かしいです。ほとんどすべての暴露は理論よりも優れていましたが、あなたの理論はかなり素晴らしいです。"
                        ),
                        onions: [
                          Onion<Message>(
                            layer: Message(
                              author: Author(
                                name: "Jun",
                                avatarImageName: "jun"
                              ),
                              message: "(笑) それはショーでとても大きなどんでん返しになっただろう 👀"
                            ),
                            onions: [
                              Onion<Message>(
                                layer: Message(
                                  author: Author(
                                    name: "Xen",
                                    avatarImageName: "xen"
                                  ),
                                  message: "ああいうプロットのひねりがあればよかった"
                                ),
                                onions: [
                                  Onion(
                                    layer: Message(
                                      author: Author(
                                        name: "Gene",
                                        avatarImageName: "gene"
                                      ),
                                      message: "意味がなかったでしょう"
                                    ),
                                    onions: [
                                      Onion(
                                        layer: Message(
                                          author: Author(
                                            name: "Ickcee",
                                            avatarImageName: "ickcee"
                                          ),
                                          message: "その通り"
                                        )
                                      )
                                    ]
                                  )
                                ]
                              )
                            ]
                          ),
                          Onion<Message>(
                            layer: Message(
                              author: Author(
                                name: "Gene",
                                avatarImageName: "gene"
                              ),
                              message: "タイタンの起源やシフターは誰なのかなどについて理論を立てていた日々が懐かしいです。ほとんどすべての暴露は理論よりも優れていましたが、あなたの理論はかなり素晴らしいです。"
                            )
                          ),
                          Onion<Message>(
                            layer: Message(
                              author: Author(
                                name: "Xen",
                                avatarImageName: "xen"
                              ),
                              message: "私たちの多くは彼が巨大なタイタンだと思っていたのを覚えています。 古き良き時代。"
                            ),
                            onions: [
                              Onion<Message>(
                                layer: Message(
                                  author: Author(
                                    name: "Gene",
                                    avatarImageName: "gene"
                                  ),
                                  message: "ピクシス将軍が超大型巨人だと思ってた"
                                ),
                                onions: [
                                  Onion<Message>(
                                    layer: Message(
                                      author: Author(
                                        name: "Xen",
                                        avatarImageName: "xen"
                                      ),
                                      message: "たぶん彼がハゲだったと思います。"
                                    )
                                  )
                                ]
                              )
                            ]
                          )
                        ]
                      ),
                      Onion<Message>(
                        layer: Message(
                          author: Author(
                            name: "Xen",
                            avatarImageName: "xen"
                          ),
                          message: "私たちの多くは彼が巨大なタイタンだと思っていたのを覚えています。 古き良き時代。"
                        ),
                        onions: [
                          Onion<Message>(
                            layer: Message(
                              author: Author(
                                name: "Gene",
                                avatarImageName: "gene"
                              ),
                              message: "ピクシス将軍が超大型巨人だと思ってた"
                            ),
                            onions: [
                              Onion<Message>(
                                layer: Message(
                                  author: Author(
                                    name: "Xen",
                                    avatarImageName: "xen"
                                  ),
                                  message: "たぶん彼がハゲだったと思います。"
                                )
                              )
                            ]
                          )
                        ]
                      )
                    ]
                    
                  )
                ]
              )
            ]
          )
        ]
      ),
      Onion<Message>(
        layer: Message(
          author: Author(
            name: "Xen",
            avatarImageName: "xen"
          ),
          message: "私たちの多くは彼が巨大なタイタンだと思っていたのを覚えています。 古き良き時代。"
        ),
        onions: [
          Onion<Message>(
            layer: Message(
              author: Author(
                name: "Gene",
                avatarImageName: "gene"
              ),
              message: "ピクシス将軍が超大型巨人だと思ってた"
            ),
            onions: [
              Onion<Message>(
                layer: Message(
                  author: Author(
                    name: "Xen",
                    avatarImageName: "xen"
                  ),
                  message: "たぶん彼がハゲだったと思います。"
                )
              )
            ]
          )
        ]
      ),
      Onion<Message>(
        layer: Message(
          author: Author(
            name: "Jun",
            avatarImageName: "jun"
          ),
          message: "(笑) それはショーでとても大きなどんでん返しになっただろう 👀"
        ),
        onions: [
          Onion<Message>(
            layer: Message(
              author: Author(
                name: "Xen",
                avatarImageName: "xen"
              ),
              message: "ああいうプロットのひねりがあればよかった"
            ),
            onions: [
              Onion(
                layer: Message(
                  author: Author(
                    name: "Gene",
                    avatarImageName: "gene"
                  ),
                  message: "意味がなかったでしょう"
                ),
                onions: [
                  Onion(
                    layer: Message(
                      author: Author(
                        name: "Ickcee",
                        avatarImageName: "ickcee"
                      ),
                      message: "その通り"
                    )
                  )
                ]
              )
            ]
          )
        ]
      ),
      Onion<Message>(
        layer: Message(
          author: Author(
            name: "Gene",
            avatarImageName: "gene"
          ),
          message: "タイタンの起源やシフターは誰なのかなどについて理論を立てていた日々が懐かしいです。ほとんどすべての暴露は理論よりも優れていましたが、あなたの理論はかなり素晴らしいです。"
        ),
        onions: [
          Onion<Message>(
            layer: Message(
              author: Author(
                name: "Jun",
                avatarImageName: "jun"
              ),
              message: "(笑) それはショーでとても大きなどんでん返しになっただろう 👀"
            ),
            onions: [
              Onion<Message>(
                layer: Message(
                  author: Author(
                    name: "Xen",
                    avatarImageName: "xen"
                  ),
                  message: "ああいうプロットのひねりがあればよかった"
                ),
                onions: [
                  Onion(
                    layer: Message(
                      author: Author(
                        name: "Gene",
                        avatarImageName: "gene"
                      ),
                      message: "意味がなかったでしょう"
                    ),
                    onions: [
                      Onion(
                        layer: Message(
                          author: Author(
                            name: "Ickcee",
                            avatarImageName: "ickcee"
                          ),
                          message: "その通り"
                        )
                      )
                    ]
                  )
                ]
              )
            ]
          ),
          Onion<Message>(
            layer: Message(
              author: Author(
                name: "Gene",
                avatarImageName: "gene"
              ),
              message: "タイタンの起源やシフターは誰なのかなどについて理論を立てていた日々が懐かしいです。ほとんどすべての暴露は理論よりも優れていましたが、あなたの理論はかなり素晴らしいです。"
            )
          ),
          Onion<Message>(
            layer: Message(
              author: Author(
                name: "Xen",
                avatarImageName: "xen"
              ),
              message: "私たちの多くは彼が巨大なタイタンだと思っていたのを覚えています。 古き良き時代。"
            ),
            onions: [
              Onion<Message>(
                layer: Message(
                  author: Author(
                    name: "Gene",
                    avatarImageName: "gene"
                  ),
                  message: "ピクシス将軍が超大型巨人だと思ってた"
                ),
                onions: [
                  Onion<Message>(
                    layer: Message(
                      author: Author(
                        name: "Xen",
                        avatarImageName: "xen"
                      ),
                      message: "たぶん彼がハゲだったと思います。"
                    ),
                    onions: [
                      Onion<Message>(
                        layer: Message(
                          author: Author(
                            name: "Jun",
                            avatarImageName: "jun"
                          ),
                          message: "(笑) それはショーでとても大きなどんでん返しになっただろう 👀"
                        ),
                        onions: [
                          Onion<Message>(
                            layer: Message(
                              author: Author(
                                name: "Xen",
                                avatarImageName: "xen"
                              ),
                              message: "ああいうプロットのひねりがあればよかった"
                            ),
                            onions: [
                              Onion(
                                layer: Message(
                                  author: Author(
                                    name: "Gene",
                                    avatarImageName: "gene"
                                  ),
                                  message: "意味がなかったでしょう"
                                ),
                                onions: [
                                  Onion(
                                    layer: Message(
                                      author: Author(
                                        name: "Ickcee",
                                        avatarImageName: "ickcee"
                                      ),
                                      message: "その通り"
                                    )
                                  )
                                ]
                              )
                            ]
                          )
                        ]
                      ),
                      Onion<Message>(
                        layer: Message(
                          author: Author(
                            name: "Gene",
                            avatarImageName: "gene"
                          ),
                          message: "タイタンの起源やシフターは誰なのかなどについて理論を立てていた日々が懐かしいです。ほとんどすべての暴露は理論よりも優れていましたが、あなたの理論はかなり素晴らしいです。"
                        ),
                        onions: [
                          Onion<Message>(
                            layer: Message(
                              author: Author(
                                name: "Jun",
                                avatarImageName: "jun"
                              ),
                              message: "(笑) それはショーでとても大きなどんでん返しになっただろう 👀"
                            ),
                            onions: [
                              Onion<Message>(
                                layer: Message(
                                  author: Author(
                                    name: "Xen",
                                    avatarImageName: "xen"
                                  ),
                                  message: "ああいうプロットのひねりがあればよかった"
                                ),
                                onions: [
                                  Onion(
                                    layer: Message(
                                      author: Author(
                                        name: "Gene",
                                        avatarImageName: "gene"
                                      ),
                                      message: "意味がなかったでしょう"
                                    ),
                                    onions: [
                                      Onion(
                                        layer: Message(
                                          author: Author(
                                            name: "Ickcee",
                                            avatarImageName: "ickcee"
                                          ),
                                          message: "その通り"
                                        )
                                      )
                                    ]
                                  )
                                ]
                              )
                            ]
                          ),
                          Onion<Message>(
                            layer: Message(
                              author: Author(
                                name: "Gene",
                                avatarImageName: "gene"
                              ),
                              message: "タイタンの起源やシフターは誰なのかなどについて理論を立てていた日々が懐かしいです。ほとんどすべての暴露は理論よりも優れていましたが、あなたの理論はかなり素晴らしいです。"
                            )
                          ),
                          Onion<Message>(
                            layer: Message(
                              author: Author(
                                name: "Xen",
                                avatarImageName: "xen"
                              ),
                              message: "私たちの多くは彼が巨大なタイタンだと思っていたのを覚えています。 古き良き時代。"
                            ),
                            onions: [
                              Onion<Message>(
                                layer: Message(
                                  author: Author(
                                    name: "Gene",
                                    avatarImageName: "gene"
                                  ),
                                  message: "ピクシス将軍が超大型巨人だと思ってた"
                                ),
                                onions: [
                                  Onion<Message>(
                                    layer: Message(
                                      author: Author(
                                        name: "Xen",
                                        avatarImageName: "xen"
                                      ),
                                      message: "たぶん彼がハゲだったと思います。"
                                    )
                                  )
                                ]
                              )
                            ]
                          )
                        ]
                      ),
                      Onion<Message>(
                        layer: Message(
                          author: Author(
                            name: "Xen",
                            avatarImageName: "xen"
                          ),
                          message: "私たちの多くは彼が巨大なタイタンだと思っていたのを覚えています。 古き良き時代。"
                        ),
                        onions: [
                          Onion<Message>(
                            layer: Message(
                              author: Author(
                                name: "Gene",
                                avatarImageName: "gene"
                              ),
                              message: "ピクシス将軍が超大型巨人だと思ってた"
                            ),
                            onions: [
                              Onion<Message>(
                                layer: Message(
                                  author: Author(
                                    name: "Xen",
                                    avatarImageName: "xen"
                                  ),
                                  message: "たぶん彼がハゲだったと思います。"
                                )
                              )
                            ]
                          )
                        ]
                      )
                    ]
                    
                  )
                ]
              )
            ]
          )
        ]
      ),
      Onion<Message>(
        layer: Message(
          author: Author(
            name: "Xen",
            avatarImageName: "xen"
          ),
          message: "私たちの多くは彼が巨大なタイタンだと思っていたのを覚えています。 古き良き時代。"
        ),
        onions: [
          Onion<Message>(
            layer: Message(
              author: Author(
                name: "Gene",
                avatarImageName: "gene"
              ),
              message: "ピクシス将軍が超大型巨人だと思ってた"
            ),
            onions: [
              Onion<Message>(
                layer: Message(
                  author: Author(
                    name: "Xen",
                    avatarImageName: "xen"
                  ),
                  message: "たぶん彼がハゲだったと思います。"
                ),
                onions: [
                  Onion<Message>(
                    layer: Message(
                      author: Author(
                        name: "Jun",
                        avatarImageName: "jun"
                      ),
                      message: "(笑) それはショーでとても大きなどんでん返しになっただろう 👀"
                    ),
                    onions: [
                      Onion<Message>(
                        layer: Message(
                          author: Author(
                            name: "Xen",
                            avatarImageName: "xen"
                          ),
                          message: "ああいうプロットのひねりがあればよかった"
                        ),
                        onions: [
                          Onion(
                            layer: Message(
                              author: Author(
                                name: "Gene",
                                avatarImageName: "gene"
                              ),
                              message: "意味がなかったでしょう"
                            ),
                            onions: [
                              Onion(
                                layer: Message(
                                  author: Author(
                                    name: "Ickcee",
                                    avatarImageName: "ickcee"
                                  ),
                                  message: "その通り"
                                )
                              )
                            ]
                          )
                        ]
                      )
                    ]
                  ),
                  Onion<Message>(
                    layer: Message(
                      author: Author(
                        name: "Gene",
                        avatarImageName: "gene"
                      ),
                      message: "タイタンの起源やシフターは誰なのかなどについて理論を立てていた日々が懐かしいです。ほとんどすべての暴露は理論よりも優れていましたが、あなたの理論はかなり素晴らしいです。"
                    ),
                    onions: [
                      Onion<Message>(
                        layer: Message(
                          author: Author(
                            name: "Jun",
                            avatarImageName: "jun"
                          ),
                          message: "(笑) それはショーでとても大きなどんでん返しになっただろう 👀"
                        ),
                        onions: [
                          Onion<Message>(
                            layer: Message(
                              author: Author(
                                name: "Xen",
                                avatarImageName: "xen"
                              ),
                              message: "ああいうプロットのひねりがあればよかった"
                            ),
                            onions: [
                              Onion(
                                layer: Message(
                                  author: Author(
                                    name: "Gene",
                                    avatarImageName: "gene"
                                  ),
                                  message: "意味がなかったでしょう"
                                ),
                                onions: [
                                  Onion(
                                    layer: Message(
                                      author: Author(
                                        name: "Ickcee",
                                        avatarImageName: "ickcee"
                                      ),
                                      message: "その通り"
                                    )
                                  )
                                ]
                              )
                            ]
                          )
                        ]
                      ),
                      Onion<Message>(
                        layer: Message(
                          author: Author(
                            name: "Gene",
                            avatarImageName: "gene"
                          ),
                          message: "タイタンの起源やシフターは誰なのかなどについて理論を立てていた日々が懐かしいです。ほとんどすべての暴露は理論よりも優れていましたが、あなたの理論はかなり素晴らしいです。"
                        )
                      ),
                      Onion<Message>(
                        layer: Message(
                          author: Author(
                            name: "Xen",
                            avatarImageName: "xen"
                          ),
                          message: "私たちの多くは彼が巨大なタイタンだと思っていたのを覚えています。 古き良き時代。"
                        ),
                        onions: [
                          Onion<Message>(
                            layer: Message(
                              author: Author(
                                name: "Gene",
                                avatarImageName: "gene"
                              ),
                              message: "ピクシス将軍が超大型巨人だと思ってた"
                            ),
                            onions: [
                              Onion<Message>(
                                layer: Message(
                                  author: Author(
                                    name: "Xen",
                                    avatarImageName: "xen"
                                  ),
                                  message: "たぶん彼がハゲだったと思います。"
                                ),
                                onions: [
                                  Onion<Message>(
                                    layer: Message(
                                      author: Author(
                                        name: "Jun",
                                        avatarImageName: "jun"
                                      ),
                                      message: "(笑) それはショーでとても大きなどんでん返しになっただろう 👀"
                                    ),
                                    onions: [
                                      Onion<Message>(
                                        layer: Message(
                                          author: Author(
                                            name: "Xen",
                                            avatarImageName: "xen"
                                          ),
                                          message: "ああいうプロットのひねりがあればよかった"
                                        ),
                                        onions: [
                                          Onion(
                                            layer: Message(
                                              author: Author(
                                                name: "Gene",
                                                avatarImageName: "gene"
                                              ),
                                              message: "意味がなかったでしょう"
                                            ),
                                            onions: [
                                              Onion(
                                                layer: Message(
                                                  author: Author(
                                                    name: "Ickcee",
                                                    avatarImageName: "ickcee"
                                                  ),
                                                  message: "その通り"
                                                )
                                              )
                                            ]
                                          )
                                        ]
                                      )
                                    ]
                                  ),
                                  Onion<Message>(
                                    layer: Message(
                                      author: Author(
                                        name: "Gene",
                                        avatarImageName: "gene"
                                      ),
                                      message: "タイタンの起源やシフターは誰なのかなどについて理論を立てていた日々が懐かしいです。ほとんどすべての暴露は理論よりも優れていましたが、あなたの理論はかなり素晴らしいです。"
                                    ),
                                    onions: [
                                      Onion<Message>(
                                        layer: Message(
                                          author: Author(
                                            name: "Jun",
                                            avatarImageName: "jun"
                                          ),
                                          message: "(笑) それはショーでとても大きなどんでん返しになっただろう 👀"
                                        ),
                                        onions: [
                                          Onion<Message>(
                                            layer: Message(
                                              author: Author(
                                                name: "Xen",
                                                avatarImageName: "xen"
                                              ),
                                              message: "ああいうプロットのひねりがあればよかった"
                                            ),
                                            onions: [
                                              Onion(
                                                layer: Message(
                                                  author: Author(
                                                    name: "Gene",
                                                    avatarImageName: "gene"
                                                  ),
                                                  message: "意味がなかったでしょう"
                                                ),
                                                onions: [
                                                  Onion(
                                                    layer: Message(
                                                      author: Author(
                                                        name: "Ickcee",
                                                        avatarImageName: "ickcee"
                                                      ),
                                                      message: "その通り"
                                                    )
                                                  )
                                                ]
                                              )
                                            ]
                                          )
                                        ]
                                      ),
                                      Onion<Message>(
                                        layer: Message(
                                          author: Author(
                                            name: "Gene",
                                            avatarImageName: "gene"
                                          ),
                                          message: "タイタンの起源やシフターは誰なのかなどについて理論を立てていた日々が懐かしいです。ほとんどすべての暴露は理論よりも優れていましたが、あなたの理論はかなり素晴らしいです。"
                                        )
                                      ),
                                      Onion<Message>(
                                        layer: Message(
                                          author: Author(
                                            name: "Xen",
                                            avatarImageName: "xen"
                                          ),
                                          message: "私たちの多くは彼が巨大なタイタンだと思っていたのを覚えています。 古き良き時代。"
                                        ),
                                        onions: [
                                          Onion<Message>(
                                            layer: Message(
                                              author: Author(
                                                name: "Gene",
                                                avatarImageName: "gene"
                                              ),
                                              message: "ピクシス将軍が超大型巨人だと思ってた"
                                            ),
                                            onions: [
                                              Onion<Message>(
                                                layer: Message(
                                                  author: Author(
                                                    name: "Xen",
                                                    avatarImageName: "xen"
                                                  ),
                                                  message: "たぶん彼がハゲだったと思います。"
                                                )
                                              )
                                            ]
                                          )
                                        ]
                                      )
                                    ]
                                  ),
                                  Onion<Message>(
                                    layer: Message(
                                      author: Author(
                                        name: "Xen",
                                        avatarImageName: "xen"
                                      ),
                                      message: "私たちの多くは彼が巨大なタイタンだと思っていたのを覚えています。 古き良き時代。"
                                    ),
                                    onions: [
                                      Onion<Message>(
                                        layer: Message(
                                          author: Author(
                                            name: "Gene",
                                            avatarImageName: "gene"
                                          ),
                                          message: "ピクシス将軍が超大型巨人だと思ってた"
                                        ),
                                        onions: [
                                          Onion<Message>(
                                            layer: Message(
                                              author: Author(
                                                name: "Xen",
                                                avatarImageName: "xen"
                                              ),
                                              message: "たぶん彼がハゲだったと思います。"
                                            )
                                          )
                                        ]
                                      )
                                    ]
                                  )
                                ]
                                
                              )
                            ]
                          )
                        ]
                      )
                    ]
                  ),
                  Onion<Message>(
                    layer: Message(
                      author: Author(
                        name: "Xen",
                        avatarImageName: "xen"
                      ),
                      message: "私たちの多くは彼が巨大なタイタンだと思っていたのを覚えています。 古き良き時代。"
                    ),
                    onions: [
                      Onion<Message>(
                        layer: Message(
                          author: Author(
                            name: "Gene",
                            avatarImageName: "gene"
                          ),
                          message: "ピクシス将軍が超大型巨人だと思ってた"
                        ),
                        onions: [
                          Onion<Message>(
                            layer: Message(
                              author: Author(
                                name: "Xen",
                                avatarImageName: "xen"
                              ),
                              message: "たぶん彼がハゲだったと思います。"
                            )
                          )
                        ]
                      )
                    ]
                  )
                ]
              )
            ]
          )
        ]
      )
    ]
  }
}

