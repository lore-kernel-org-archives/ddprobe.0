Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF9717E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F2CCC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671503487;
	bh=sHqvUPnzXRIDLVJJbcXPX+bZYkb2jd5M/aWBCmDRJ38=;
	h=To:Subject:From:Date:From;
	b=ZF2+WghLbtBQGpkJP4YWB3rxD9Xi2LnXIABkXlHtrjQ1hh9+CruKifbN2FixIgk/u
	 bUlBSioiBe8XcLgsQdX1GEyNe7VlNggTIOmt3rSp+jUg7tEGRwJC6cRS0sH4a0TWYS
	 6j7sqbtP51Ve5e6aRPUmRmD6bPSbITO9BkWKql/lCMpAkbgBH75+FxY+xmAq2Cdr0f
	 TUK4PB44dMu041Qhs9ILwGKF0fdRN5Bc5d1t9EOeKLXLy5pzMl9BPMoV6rPSv8W8Tr
	 cEupYMosIcXd9CTB9bMOUuZqlia0cIWcgF2sf2GzpFBsU8HbzDpxzcLQwVL8mL841m
	 OTLn8Fuf9uwJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73EDDC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167150348741.3076.18125026933795694588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d90cf28d6c673a2b8b5641b29f18f2a363e14d7f54fd3bcb729a43b8a19a181
Date: Tue, 20 Dec 2022 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671503487
