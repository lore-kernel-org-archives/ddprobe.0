Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368751FC5
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 13:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E20D1C4339B
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 13:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678627625;
	bh=FU+JMciXmSi8Tiidyytha7dwHShAvB2MazUA9M5z3Ow=;
	h=To:Subject:From:Date:From;
	b=U3DhNeTY6Cy6WUtbyIEL9Bi5S7KPZBMjy5qtxxfDBw3JQjv27KWKjJzkHcScUhFwY
	 QwNlg8LN0w05k0JniWPalGwIliP8/PkIPW4a1gYgJHgq5DNkl9G/ouf1Ttu/Gq3uD+
	 gttX4dffjpZDvkU6ee5tXzC4YaBFF9Wk7g6u8O97VwZYkxIsRJK1eBkD1+7ZsBcPqq
	 pO2iiUV/mSF/iZgzKISP6eIvK6Vb0WfXyzZL7sRCduSH0eEok1DnfsONKHLErV3AwH
	 l0dgyFYm2VK6sD557/hXr5Ol0HdeFzZxmTBWU8dGwUV8z5gcGVnA01OVoWIxMDDnAZ
	 UDDfwRhkLjWfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5EF8C6FD1F
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 13:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167862762580.28643.5358189879519872030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34143da53b58a886b5a4d3db04a4fdf9dbb0f94d3ab46f38007f454c7b3222e9
Date: Sun, 12 Mar 2023 13:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678627625
