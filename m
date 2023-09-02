Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FEE33C25
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 14:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6ECC433C9
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 14:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693665248;
	bh=oAa11IHQD8mcYnxkZQCQMjb8IpvADV+ugs9AeDJ/7lM=;
	h=To:Subject:From:Date:From;
	b=k4ENKbjIF/QmPQfKknr0G30UWlvWSWKSG6H6+xwc3QjPT3tTNDetIo1LkMnhNts33
	 P+PR0GFW+gdlhAszC9QsYFgq7PJnnCXu9ze0d2n7N3FQkEc3RCH1CgLTai30bRROFD
	 /KUolf0vPtLZk4rjc4lkABzgjaUS8xM6qGcFQ+1wuXO0c0OH+FKt7CppxH18pmFz8t
	 fQM5Bwp2GEE4xz0qXW16Ok2UaSOCG+ihxEdzJh/FuTmG0mSJEMF0MjUIPtYRfT28wT
	 vDxWkTojaYyeleMOhbHiE8bq5McAvEEMGAk6FQv4Q/e9n0LQrCIEOJlXvW78ik6teE
	 E9WUwk2cN0k7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C99C001DB
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 14:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169366524867.18519.3107043867241905653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99daf6cd9c41e14960d55b2fec82db07699751a27d32668974d63bf2d2a2b7f7
Date: Sat, 02 Sep 2023 14:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693665248
