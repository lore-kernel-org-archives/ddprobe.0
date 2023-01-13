Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9D87EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89FCCC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673630487;
	bh=YGFv0xkf+nG+HKimRkNtaVegqvQVtCT+GVUnEkhKPbo=;
	h=To:Subject:From:Date:From;
	b=XhON5MSHefcYGWaXmfN0AUvEYyfljPP3E6CttSjt0Zo8y5K0TyktU0+VZseylj2Z4
	 G8RM8AWe2TzmtWC/HNBHIX5yDNT9s5lT1dgkTaPwnlct41onNTjJvVM/ZfjvHytzb4
	 8VGcsYzcrIjtIHgkHD3k/WrKEWY7hU75JQreUUeLcJzm9MgSPDs/RwEi6GpgHjP2TL
	 Iu6m3Tx46Y7u0ZSZQ7G3gtNpkNPFpWsNZIcAC5qqMixfbonPi6/+pxkpR8lXr6a+8U
	 MrWLqc+nXriLkUo+i16o1TRcVRiAu+Z6P9SUkPdGN2YhP+wTA6aEB/JfCraRVUv385
	 nRe+TLTf6qvZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 707ACC3DA78
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167363048744.9673.6348911636182208095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb3ca67e07bcf45b496e9546787b1966d5525b054874ea978d74935935971b0e
Date: Fri, 13 Jan 2023 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673630487
