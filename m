Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5DF19BAD
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuUgfbY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8828CC433C7
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700436496;
	bh=O64IRTGGYz6yIc78xDCmSnuptk4T2E9eDqEMJZSCEs4=;
	h=To:Subject:From:Date:From;
	b=uuUgfbY2ut8FPKKkFh9x8UfH+0bOmIsUWFfcYdrmU1N6+sgLFZUA9JqapMZF52iVf
	 KGou2gy9VssEiqTAdFXWwlZ95aOnH5Gvo+MNKvnv2gsWfzq2mL4QLHXa3TNo9YI2vK
	 KfBKtkU3i2YsSIAwhgHAj7PPpnHzjRmSeL5u068r1Objj/AKRM3CAW/6WnDfaLBHR9
	 9/simPgwbwhtyH09zdGWli1vSBdoObC1cITyVzocruIvI6Fy6S7s/y4GmeavFuxtbe
	 +tBoVlp8CKqVnuobM87O+LWBmOrzzkV37Z6I3qt3aTBaQI1cKoWvkWVZTA9DwqQ7xC
	 DD74uLpJ86VIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67ABCC072A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170043649640.31619.11796786581234245040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163ca3780250f59e322424d239f22987f667137dc5265698f399a9f59a0d82d7
Date: Sun, 19 Nov 2023 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700436496
