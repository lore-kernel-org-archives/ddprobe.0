Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCF127477
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 14:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tlRsdrWI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F37D4C433C7
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 14:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697724493;
	bh=Q1XqpLWW1JR+JYdbQhpb3UFhAR/zWAJsWU1+Er9Jb2A=;
	h=To:Subject:From:Date:From;
	b=tlRsdrWI0gBsk9yei33LXjl0n39ieeBzcRkwuN4fu9tnl1R1Nq5MqW+NeGajX9G8m
	 vsaBKPI5ds5U3kefb8FbekzeHLRrRQ5sMpus3RbIRvdrb5+PqN483CK9wjAp5tjM82
	 wutxava7tP+3NGpxoBsA42pqfPddAeJHdG4RLuY6aecreOTysnRVSKfr/xHyKIvlez
	 vBZHhzsqX3TpQP5lz1LVDca/1oiLzU873zFsmOhODPR43AC+mRlmXSGZccK9yX6mV7
	 xY5Aw6BLN0dngRmtbGQte8nROL5q6trcZ3R+pwgsYQbQApTTBzjCCDjMxAYa/8pPSI
	 VrLHLeNvHYRiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA79DCDB465
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 14:08:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169772449288.4030.8550296207169356767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a797bd6491a097295e26940838ec4f54f471ddaf160105bf7ca1a1ea32a705
Date: Thu, 19 Oct 2023 14:08:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697724492
