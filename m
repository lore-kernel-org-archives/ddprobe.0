Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6A52900
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7479DC433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 11:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670154654;
	bh=pHwf6H+CqTYil14nfRRJDjbGxks5WpGIFLqVtfUkQ8s=;
	h=To:Subject:From:Date:From;
	b=q2RMg1wrYC0LQLdAzA2GoPk3hZN8eqNymKbeGomuxh0F7deq8c7xzjEUR0CucpIWs
	 NmgetyoeeNXYuiaGWJ/TEtXTAruZ/FwQuMhyuMWczfEIq89TPYkE7mP8zXprRc+BY4
	 fPyi0ALUVF4pRcr0G7wM45hbENiRSrS4kHQmOkgmk5+6tKYfTk5WjXTxGqkHE3mm/K
	 Y9it8elKr9xnvUU86PlNK5CVKfG9BBcMOBxh2j9oBXrOwIdCHDxW9PWb42mLrRTzmW
	 lRFC4SviIZ6RoDAQKou/lY2cnHUOG7RFtoN+b9V1hYQ+nBfUmULW0Wg4EaP/r6/yH6
	 wk3cKZcbJyxhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AA0C4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 11:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167015465434.31152.11024774368717595572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7bf4345897bea305b801f7d50f5b7ddb736c24d932ad4908b4e5886636506d3
Date: Sun, 04 Dec 2022 11:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670154654
