Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA41636C
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71F56C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668831654;
	bh=k1Mcc4V+KCQNLAOmn4X05es5LPvcfQxP+yTQW/tSZTo=;
	h=To:Subject:From:Date:From;
	b=CsqFJWKS0vYajp8eWK3beygoApKDBJCHArnPKUeD7sCD7VdwRskK0L1RCU30x8RNP
	 JUzToI+fMrY1p7yZUq2UnrvzlXwrwWeysiarLRvmibPzfjpzXGdECGOaFO/+27/Mla
	 JePLaIF+6we9Tcj08c1r/wEYG83SHLXMUmCxFalvzCUAOsCQht6Z4NUrD4p5e0CXom
	 LNTJMqWaJ7mj+6cycRMoSZ9EMDS1hthYwCyWMEOcnSGySCxH2JsZGye/6wWdkXw6Is
	 kgZFk+vA22vnaNGJgg+k9IdycBQN8Megh1La31EWi5Y2dRtY1cqq768u7wk5VH9G1p
	 LUchSZdc6kHAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59EC4C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166883165436.26928.1702972179545969555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5681f24b102c2298e96f0e3cea1f5ff6afbae382751f905e9a4c9025a77fdfb
Date: Sat, 19 Nov 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668831654
