Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE6A42CA2
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66A29C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663878053;
	bh=2+7YuyH4NxlLENkdk3EFeTqhfpCc/4V5zdhHOitsXGg=;
	h=To:Subject:From:Date:From;
	b=VSI8VGAUSI93HMw8QCQfnFpXllu6i9x2Vzjp8ELLl+LRo6Xx3YjTUGBRvBEmWU50p
	 f690+NId8mFZ5kanoxu/VekdJMd4ZIxKK5FhZNAII4n+0JIfPNCR3bmJhxgg9obA6Z
	 JbJpXMBXfUQhA16Qn7kHuXvyvH0B6tscY9n/y0nBQbIM1m7zFGddpAbKF8ogYyKqNT
	 1tkEmIAZ+ImhqWvugNKvnOsWHgr/sUVMLrNyRTdqIwaoqSaFgzqUCayFj3s5NmT0ST
	 wR4SUwlYL3fPojS+awLsqeEI4AQvfXaqwjEQyK/Lke4LFbKP4eNC5dKAd6qvfx2/xk
	 DEilYipQGAaQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ED9EECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166387805331.21815.10802288227514790301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b8c6499d4ab6159c2d4105fcdc5bb24bf2f9f4426de833ff95270e0a7dbc3a7
Date: Thu, 22 Sep 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663878053
