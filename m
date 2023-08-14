Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD66CA4B
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 19:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12A5C433C8
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 19:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692042788;
	bh=Ck7ZE8150M7sVwFgVgpLWulSxgwQA3mTkmepDYrHgI8=;
	h=To:Subject:From:Date:From;
	b=lfsmRw8bDVbMzWD8EqGk4EST7OilGeGHmngZjjHdQmpEoNVt6MF4XZ0UfGOEWYgWS
	 kqom2GFjy1HNe9ZslhsyYiv5KIztqC27P/3PyY4qb2+8QjNnT6MvwlGgTIWaJ1hS/S
	 dOmCjvhtEexrJ3lifKaEEUvqIWa+fFAegMPYUuJ6su1GODrtE2OR11TomXm/vSgU6W
	 Fo66MnzqmYwKn3oSmGnKIlABLX91yc5Vx4+1IUGFgk94Wl17KaIV7ezS0JVtyAs3/A
	 /VewwKlR1ni8nF4JmKZe0MHFgyoVxiKqIoDAaSbvNLgPiz06dwz00gjuzcxO/ZMM+X
	 duKUd1f73wqJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5135C001DB
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 19:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169204278866.23954.5956704384340476021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25ccf146c3f60791c80d76ff6327987363d6cf3f649f75fbf95f1dc0b7073fb9
Date: Mon, 14 Aug 2023 19:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692042788
