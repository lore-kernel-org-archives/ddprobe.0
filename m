Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495C52FAE
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 17:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0FCC433A0
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 17:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676224445;
	bh=ZLYftuS7zadr/4V+t7U6ZwCiUrwBkJ0jhrdXwU04QB4=;
	h=To:Subject:From:Date:From;
	b=kt0GFJbdrT2vBVP/caWpojp+Pju87xl3NtCjPlk9K06UdddW/VuNL6FtSdBla8ddo
	 Ygz02tYBsvg73YXT6r5ycxV/WwUNBwvFlfLu4SlrD5AxRDW+axA54eKrIW+P40UlqX
	 D4R5/nAW9Xcqbq/iJRJiNS4t1CLHiGWC0F9ZiKrjSWvjYevx0t1+63GCIXLrcqYRZ0
	 4Ocs2z6oo0f0KtOmOmn/MBSkCanUgHMEq7q5pUhFmkR6yH8+08Rlob/RoyG/ioi8lQ
	 rSbqWJNYr4ZUP0bpV1qS3eulqRVKJfwHX+eeGG0gA+bL7JzxL0jliwMxdEf+QQLtp1
	 8Bx6K8POF9yeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA385C636D4
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 17:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167622444574.11797.8313677328981876459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d43fddcad5567d427085a38ed2e4da75b2c1b052c1cd118a7fbffb7e2cc35ff
Date: Sun, 12 Feb 2023 17:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676224445
