Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3B63205
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 16:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE827C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 16:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674835985;
	bh=zgmIzLoY9ay0MnFhg58mWGCgfEZ8MXFEUMSvqNJ32jA=;
	h=To:Subject:From:Date:From;
	b=Cu5PwHY1H+9+iKsU4yykqWR0PhjHmAX+0Tf/29OTLm8GaZwJFEPJBbnP9OLZHiPEh
	 kICDqRLiE6yo4xpXtS2ZuhWZxk1HrmtS0IEMFmQGRSKxsiPBHpFC2GTkf4wl5+8i88
	 GSeRZoG9pVJ8+8nGmDoDQEI1vb5+IBUx7JJ6LM1X/k/HpBhRmrazliUcAdFG2bT6WG
	 eengUQ2Rj+2d77F4PX25bRtv5X8EEtE6Ycb0h/ntHmE/FOcuYODdMPAPgtZC9U337H
	 UsfxaBRkHbLeX0tRvIDxvhBCAdZvtvw2QTxbM7DCsTwXo2dfGy6ky/CVva5OBOIfpR
	 p1AdD13L8fHgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C11CFC54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 16:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167483598578.4912.5147424571564370544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dff19c9c810ab3f72e38e44c1f0fc7c2bfb2db22ce94ef7255b36b88e5c56314
Date: Fri, 27 Jan 2023 16:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674835985
