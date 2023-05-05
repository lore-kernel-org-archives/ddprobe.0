Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 658B88BE0
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 16:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02BE3C433D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 16:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683303426;
	bh=uBOEqB56Iwd5Ghq0l/+AEH+MxAz56q4df/fhLfZCdBA=;
	h=To:Subject:From:Date:From;
	b=J12n0q1pe17eYIT7NsOUaS7g3Om7SXrQikhzH55dRuNUe3gr3P7bY2B/x0kiD1LJr
	 dS9WZhmKtAW8+ooCN+B1OkrLUB2z6YMgTRV9suKNhBDaOR+ZeOQpn4WIDr529ccPVK
	 BM4/0jgC3ntSLWoXtIthllZ0WF09Vwb6gCDqOg/nBpMv3r2rDh6ag3HfRBnwa77/4W
	 WS1/Ghh8+5fNfJqajvQ4dOCMRFOZRobA+SwWnOf+5b0H/AA8ivaFeQpMxN6BMKX0tm
	 JGo8sLBnIP2+dJaSKDKKRWbMgO0d0D2P0UVpatzCElRI63Q0O2DV7GuYMYL4oNOCy0
	 G9LRxoOIeLFYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7832C77B7C
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 16:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168330342587.31653.426367704072773982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db663aada4bcc6ca69c94f0c55c32c09fd74207117b4aa6e365222326db9843
Date: Fri, 05 May 2023 16:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683303425
