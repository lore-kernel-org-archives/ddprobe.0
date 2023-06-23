Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E952A101E7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 19:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1347C433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 19:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687548788;
	bh=Qwc8wpAsxw3iYV+4Kg6FbYoK/tP2rErDJIexaS+MbPQ=;
	h=To:Subject:From:Date:From;
	b=qdagjDNKfNB4ERRc2dOKVccKDsQuWkxW8QYYWyM6zTc9vBcotBgiwDdQNvwqtxBQq
	 qKZbebaHklmKLgkEUjqks+DD0hpRt4eGscHUJyU/O0EaIaQAoDi2rN+M18tsQL2MGd
	 fYJpi5igaj2xzEhUG5Hh9S6bhuiLrlETezFhBcx8Gvb3nJ4ftD5mVe7WNCnZiORLQf
	 l8VMzwPMTXI2u4kbdW7O8BtGYmsLSq8uoR2txFV6HPfqloKyj+/J9p5oqL92ieywfG
	 sz/Hbe0BpncppBB+w8HKd35R6QIT1PJGwvq+RfL1om3VUwayvjyVeHCFXhom3Kqfiu
	 TLdB0tzC03Rmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B2DEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 19:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168754878865.3813.9207782570813587110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a7b987c3e8e6a652b5ad5f800efe1fa2b5813b05cb7e7afaf3c94444df20342
Date: Fri, 23 Jun 2023 19:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687548788
