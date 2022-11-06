Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF760161
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93EF5C433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667693454;
	bh=OK6djp7vh9QFyIM2OyuayrtwJkPp6Y5ANGCwTwAH2zc=;
	h=To:Subject:From:Date:From;
	b=N97d7p4Wq0yy0s/ndBvxfCG8BKrWAyrRmqIzQs0W0MRu56sQOXvgBvtBIk9ZVzg94
	 OTMBHmcDvvd2OHw5YxYLxdW5UQ8kCEbGP2Bx8dXwUh9+O361IkhUaX0l9eY/HcvmuK
	 5OhSnwaC1KVxZNHZ8WrtjAAsR04P/rOaSzhiZJAHM+VzsRIOgi3Oj9Umb7YuDDiFyT
	 2LT1tSUC835Mu4RYiT3jAgxtHLu28LGQQUbhARE4YlpIuFzDgcf6HrUH7uuyuOmQJ1
	 M5GhPh8hL9NvYtnjxBW4EbjijjGjCl0ti+s/HwHdx3loAe4SRLJwKY42Z5cfq1Ch15
	 tY7CftiGZ2Xyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DE7AC4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166769345437.18341.6774648713340726840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 066d72c968c1743738884ed2e6fe2cd23d86f19a1a8b841c59f42f090a932416
Date: Sun, 06 Nov 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667693454
