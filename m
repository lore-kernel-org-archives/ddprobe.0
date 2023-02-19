Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F85D2F4B
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 19:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4879C433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 19:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676834885;
	bh=KHuxtbzzuZu5cnS4E8EUKaa6g/qbbYp6kXQPggGB9Fw=;
	h=To:Subject:From:Date:From;
	b=mXLJjpVtGFcI0BBNez6JOdJdwpyKTz0vDGetgftT9eH/kV15TrVlHlJqoCaUaqBsj
	 HIlkcGpVI3pQdckBzeB7gkI3BcOgUym0lzu3ztBvNWlIfqz6rDBZ2HBIO3yNK4SW/s
	 /9arBArFGXKqEUF/wDXUvRi897eEq9SBCcUPsoYM50CuW120Zn+EjCZP37shHQg8ez
	 j9COfVnHRHhxeJRaoNPGK0R/rsJxg2gB1shpOOBxA2yPfJ8xeCxO6k4cG5VAoRRhhA
	 kSzgDcF+EuKrijmpoa8u+P9rcOFZkcg/Xxy8kR7ZC0g67Nfi/X8XEll7jJ397iq1hP
	 Q3jvUKG2gFqnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CEEC05027
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 19:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167683488574.18392.7424870209139983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6e6a91b8fae64ce0ec10026266e399a2f8fb0048dd6300538df05b1e90d9338
Date: Sun, 19 Feb 2023 19:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676834885
