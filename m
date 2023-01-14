Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4B580A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 13:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A825C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673703687;
	bh=HaAzksHUwxnmXhRkbbx0rDVKQ8CWR548svaSVecxMMw=;
	h=To:Subject:From:Date:From;
	b=rzSaqC8DHwNzBNjaT0LqGyDY4k1VYRliZvrhlZP78YZjI1rY6qXhjDUyn6KWpsGRD
	 fgonFJRg2K/XxCRXoDbpuAq0XEczXy2fF9WCPtNA6OmzDPg5Iu2XuBXo6zQMdLxpSU
	 A/h1rfr7XQC1MvRLK1LuC94CWzgzP134wl9cZW8f638rM1+fhKDNuLqxkSOJ5zpMTp
	 m6gw6BWK7lszpjXtN7J+yqlia61QTCu+gV9qRqRrZ95h38N5VP0tBSR7M7ZNL8vOr5
	 scRKXo0rVZJYfpk0PZSAxUL0KZenC3x2eMMilKFJGYIaAqQL48iweVNV4BqCbPICrN
	 l5kiHNE7bQ2Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D82CC46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 13:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167370368737.15702.4450384028069790661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d685d6fd94278739ef1247a2987d25f2b687042439802ff68a60a31873df2e2c
Date: Sat, 14 Jan 2023 13:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673703687
