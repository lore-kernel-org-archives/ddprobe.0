Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF361D2F0
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 23:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE033C433C8
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 23:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691622189;
	bh=ZUGzyySP1Va6dKZr+gQQGjrXO36pVNxC0sr2U1T4MjU=;
	h=To:Subject:From:Date:From;
	b=jvpJGP+iKtN+rWGSM2WCks7c2MGSKGK+Fyt6Vbx2bvEFoA1HLgEkoHZm8NJM7DoRR
	 lkead0LUcTtX2AoITS05NoJGpSqbxh2kEazT+kthq7rWQnbH+7Vy0O+rca95oEEbib
	 BXFvF/YiD9gQT1uXNLQ6a4gpsNAUUoEyTKp8ReW1s+jiyniTnIYeU2MmY7PcVNppPm
	 si6SVVqFqLjYPqq8EPa0QqZ4Lw5grT/oJVgGwS0JE7r4kpwfW5hTxFyYgzC7RU4m1I
	 WMCeEiXsD+JDmTfxMm0pXoQWo7YI+ybB0MIWvk+AY7xwjeU6anzREYrIcPMjoVepem
	 hd5Hk3evlAkiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDAE3C001DE
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 23:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169162218883.10693.3422841226726287739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2548cdd5e1a20a5edbec7d98bd8ff30d7248a04864ba894acde1b5bb01449a
Date: Wed, 09 Aug 2023 23:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691622188
