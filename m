Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FCDA6112
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 19:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E02C6C433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 19:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692386648;
	bh=7QoAA+89sNTMAX/+8IWX8WXdH9txzLcUdjlNtS3yA/M=;
	h=To:Subject:From:Date:From;
	b=RUdYmHjqk2E3lmt/bFbQjciKpDlxlS+JoxZZKclDeQPn/NS8anwwuddnXDz/swv/T
	 +aV1b+7gGf/R9XzTHaiGpopV1GNBeZRLEtFTNBCsXGU2/zQ7Fs2kI7AnoL7esfnJSn
	 R8RcL7jU26UNRAM7QPywOTG2njNDl/BBSvyt9y5xImaN98xiajdbr0W0F5SN1g9FA3
	 s0Xo4DkcV+hq8gEde4yTy6oEnIpji9Y+3YwKurtqSIrI/CKC4vciVdJkNugCRVSsFv
	 cCInCDI9OGdS4TN6+jTOl53HXgTOgt4i41pirEaTCJKlZ/zg/2agtCgq+0MyT/UMY+
	 to0oLXoJCqtJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B77E2EE4992
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 19:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169238664873.646.1664816353287519982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 747bc89140c5681f5c310d006426a9c85648039109399caa7ea1db5d85d5e805
Date: Fri, 18 Aug 2023 19:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692386648
