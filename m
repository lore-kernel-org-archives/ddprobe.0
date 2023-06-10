Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9DAB408F8
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 05:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 32D3CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 05:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686374286;
	bh=i/6O+QmkWMr2qEjtJEWOqNUTeldRI51ssXiybiGr7nA=;
	h=To:Subject:From:Date:From;
	b=e0dlYjNDoxeRc9vVak9+7/piY3kDyt0AIb+jhZmPDpfL3hgr5BV6KuFddsK9QdvSR
	 Uzq5r6zp8tKsdOMvUExKGhBv2kA0q4JMPe1LOQFqZlLQjGY8YG7Lyrc88F0BBq79dJ
	 pxIBoc03ExztVHiE4lMs3bOoA5A5f0+1Xp3qQ2efBb1sa6To5wKitGjqWP8Mgi4dHB
	 1z1ukij25C4a8Ef0QKqBBb0Ad6dfNdFvjzLlxH1QqVXfzA0YXQusu1tqqvqXJCgih+
	 sBrZufl96DufPnIENwftUCwm+uI87M/tvNItmaHfZhga0JKXNr+kx3aNUm7Zg/igTm
	 dr7eMjCs99Nyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA3DBC77B7A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 05:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168637428587.12885.10202365764281270453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1ca24534092e6ba1a25f77c97539cba93441007dce5a886f91cf7f8198516f
Date: Sat, 10 Jun 2023 05:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686374285
