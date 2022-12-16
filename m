Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA977190
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81293C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671194487;
	bh=r8hkgZRq6jTWMla1KToctS8130utZR3gteBVhJPXpIw=;
	h=To:Subject:From:Date:From;
	b=rJwim+9yKuU9t7Ama8UWz3uETtLQ/+DPbP9DY39mRc0mN4EM/Q1FfKVh3mzPEQUoc
	 EYGd1TM028UI0TvDSNk2C6iJRIA4UxUM57dQ9J4xg8zmy/aTldxRHEbceruwu+CmlJ
	 i95QYj61hkr/hSldJwXUARXY0aVII9VDwIXxj/dCifGh+inCI8KWzOtok732itJarV
	 m7LSqSlXbDryxGtJMywWITtJQI3YEo4GeDgUmrFb7G6GFC+sX7v5DRgSNp1Sh1ECql
	 AKTj6c0wDUgykgLCfL9ghod0Xx/uSDCbcNeL7Tzb8A+qbOXQ9nB3XnDbQfbyUxDnXU
	 iZz6+QHnwS/XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64778C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167119448740.24460.11458451510871947564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 159f1085a1a378228971dc25c3e81c19166b985772bb076f77d076ff616f6284
Date: Fri, 16 Dec 2022 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671194487
