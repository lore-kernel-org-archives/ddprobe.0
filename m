Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1FABE833
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70DEDC433B5
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666941654;
	bh=Sb0d+uGPqk8moFxXHGeme4xrR03OGrpy7gM9T0xnHKg=;
	h=To:Subject:From:Date:From;
	b=gSPMuJi0clgr1a+ud/ipdsQ828cCJWZPxDdSirpYcemy4O0MU7vDZCbZSGi5K2p11
	 1Mxlpi80BgcvCXF1IX5AXEsdKbQAPY/cDogmy9SgMVwDnimEW2nrLCB87OF5c/qykg
	 r4XB2hZ3koRnyCNczQSm8WpA2hFW9nXfokZgoY8ck6wAtUQeGTasmjTyL1CRXK0RaB
	 LCnpkDuJiHC8w02wJOnYC/vGMjrI4JOZv1e1dYYr8jFMV/deN3T1bvtf3vInhSynXB
	 2sFW0B3krQl6ABkXaT03D7FrG2XbJz6vVTIO7qZ/22IrUUDUM0euIlUdYrNrAAjIeG
	 IB6d3kMs4UnkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58928C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166694165435.16529.610950492473796751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0bb571a3dfea2d3148f189832d72e5c17b6ee2adf3872782d87c6a187e0f1a1
Date: Fri, 28 Oct 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666941654
