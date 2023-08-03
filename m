Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7476C8836
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 08:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF433C433C8
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 08:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691050928;
	bh=9n0yzJS7YPPwrbuYlInP2j5LvwW0fGgdojgg56nnxcA=;
	h=To:Subject:From:Date:From;
	b=kAGiiXYLNvFXD9XpmM/1V+flbord+pLLqUeMbheMYwx0E/iwRnZ9IjvsSgSPHJr6A
	 9UkCIztMIuJN0l4OcF6+bLz6EIq8/jZpIn2v2LQAZUIQZN5dZ/zMwBFOjw6w8WQfeC
	 JkYQNd5k01wQQQeEsu+GEube4UNHVaCwIDHSuRi3KR85WeR4wSfSTSA/zq7N0drBuU
	 EUKOBqBeyz3jil952SiYa0xqpGBktCpMZRC9CUUtNjXGLzFmTjMzvvXpbJJO7br0Zq
	 drjEtJqf0nbYjSruw/kmJYvPgxjMwzzsaSQJLTEuYgP6nJjet9f4bEmakl8YqddUXS
	 vteedPS0e2auA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3843C001DF
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 08:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169105092872.29173.1241864453922181904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ed815176682c35ad4aeba4c0dba3965a3942f329c6c40ecbafd63032136629
Date: Thu, 03 Aug 2023 08:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691050928
