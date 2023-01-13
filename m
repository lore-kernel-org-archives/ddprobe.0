Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE1E4BA41
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94795C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673647287;
	bh=2UeafWRq/wWWhGORCwOFq3OnywKZMbUb56qt3jaYdSo=;
	h=To:Subject:From:Date:From;
	b=bTAhtXaw0ddTQfSoJkCNFOAsT9yA/tI/ccNNvXtNtfzEwYBCZnBhAOkUr3vzkvfm/
	 OPOwlhZbNy72WSfbc58IAVo7xIRhQc75X5lkEI2mNK8eYUiv65y/nRDZgbl5hMEoHX
	 2P6urtnpvW63T+1JdfVj+5OT5rZat8ColK0LbbNi5BY5VvCkWrvpvk8KPP/X/ylW6Q
	 r2MxzxP3w6/z2xGhHTzP2M8i6xTg5JK9/yMnW4vSKGjSXnwtqdCdrx3ttnxW3eTQHX
	 bsE1bkUKSLP6nBnxmsj2sPLn5Rm48Lhm/8xsSWe/fYyL+EOD4m+V98XKxRTaW6D/lY
	 Y6WXaOlyvQXtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E888C3DA78
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167364728743.28307.10412678354909158543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac1dba9aa595e1f2e2afa24a446724c9516ef98cc92fefdf26612831f999622
Date: Fri, 13 Jan 2023 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673647287
