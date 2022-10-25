Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6AF748E
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7982BC433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666721453;
	bh=pKjhBaVuJQ3K1YSR01rCHSBtL9VWIEAkowIPHqlFWF0=;
	h=To:Subject:From:Date:From;
	b=lB6nlGAHm/8zFc3UXje9WYUZ6A3D3EkAuRv47a0Du7DAeOFG56GUoGi6Zg+TZreRx
	 y2+wwUDtVbHWWq+H/JMB9IVt9pkvt2GJpkqd1lMwf7zf2Wqyj2iWFL62VjDjTHh7tm
	 n/1KtyW8dRK+bZtz4ar2CwsSbQ6MRZvCNpvB4+Qc1MIWWWpEqVAF8r6+MpD2U+nqnO
	 RJ3UVOQOJzP/edNZFKm4ZusoGYpJOoVmbAqNLclpIO29KRVEehEUcy5JJfYubUOv/f
	 dSzzGIelHnLUglf1h9kiQNeKIPecfzF8HItEC2W820EQDCoU+kj2DRJXl7xvQBesct
	 gnWOierKr8bxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 649A0C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166672145336.5097.17461935888438866926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa685530958f3f2d6d91f47dcceecd7b8f39ebd743631d797900760a52c86588
Date: Tue, 25 Oct 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666721453
