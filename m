Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB7F9CA5C
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 18:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0840C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 18:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695579308;
	bh=J9XxPUaRmeAWMFmeSHYP1lBMSJRUv82ouCgDxJWJj48=;
	h=To:Subject:From:Date:From;
	b=NK902FgZnKpkvUJAtV8gkkVWm2SPzSrmzQHFqAO3pxpaLjNNcXrlBi3QhSeQB6jZy
	 XnuTykhUbo3WABP9Qnxiuz3p0CCJVtxXmJ+bpZXnjHInebHW8LV2xWhgQXLz9PUIrX
	 4UooibYxr16HDEB6Iwv6mRM5ieFZR6t5psGDzvAfw0TR932ZCivtI9/g1v0An0MVNO
	 JOM2mRaTONn5bj4O+WAZ3UYd0rKA8FZlUowUcrSmV2DUlET4y5zMlDVUMwt1yXYaUw
	 8dI4wt6fvymQ6n3xMf7ohDOFsB7qsrdj545c0O7/l+/0Gmba1m6FQwjurY0SGkuvSu
	 Kqdkq6/1IJKQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA52CE7A8A
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 18:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169557930868.16919.7199769068888364499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84437b13a312f36e6f9308fcfc0014d60a4f28cdf14137fee941bcc3d8c7405d
Date: Sun, 24 Sep 2023 18:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695579308
