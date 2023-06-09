Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70265EA6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 02:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA16C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 02:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686279245;
	bh=aG4qu+IdKkrcSK8XBqw3wV8PV+k+zs6+ZsbhYGhc1y0=;
	h=To:Subject:From:Date:From;
	b=PNWUXVD7wYKZS1xN4UiecIT/eWM7RcV4T8AMOvu4wcRXX2QgYp1Gh71yVpyh5LY7n
	 of5X2XVusinHMdx/J7XmkKGKkYql0F4ullPTM3rTB9Fr3TtxYlCr5RxDYGOuznV6Fo
	 Qgshh8bh/p5g9baI5SHtssz3KEFyjbmPagzVK3UQo2HLAKNn5dkoZzsEowgHzZ06Wu
	 b2M8NxnlU6DWWdC1OAJQyauKJQJlbQtyxzevWLqktKJtmzV85X4n5iav3ZJZtkIgGR
	 RSsw4FjIuf5Av9lnouz4PmUZwL+OqXYmgVH/8VrJbkECM6t79mXL3UZltyg9iEpXYy
	 yRpf+s917xDmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE6D6C7EE29
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 02:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168627924576.2884.3865753087168428619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82caeb4106891736f3a036e35c7cc4df9bb0e3d1729e41468654ee79e9c69af1
Date: Fri, 09 Jun 2023 02:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686279245
