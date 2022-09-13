Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA401320D
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67947C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663068653;
	bh=zitbIso76y3cC+iiX1ZifO0jSfK5yFFD7AwybMmJ3PE=;
	h=To:Subject:From:Date:From;
	b=GXhP4o6YPaFlE46b57NSEVrNN2aalKo78n1KGz4+0URFPjJRyf2PLfqCzXiZacgDd
	 KWSVqUaLRiMEffwbGv1mTi0B3AEKi52HJq7/DtZvifQE95VYu8WQMZS5vUUcnY7w51
	 oxjYOAQR7NmVOOvt1SRVr3ApE9I1HQdE9KM510Q1y31shE1gs8hbhj1N24NVGfRFtS
	 HbpszLhAhqJYoy7EB4lIaAJ0zPCCmkF52VqDH9A4nYUd81Y9YcL4OR/6cBOeVgzdWU
	 B08aEpDafmHAStUH2/ZA3eBicXD6FAZ0zq8pALlymUXZUO7PxUVkXH3w8P2cNMhSYJ
	 ad002ZYYtlx+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 520B3C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166306865332.15364.8115843411963374133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5738f62088618464e7afa0ad7e31ce6b109bd571086d159245af55b6cfbf317
Date: Tue, 13 Sep 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663068653
