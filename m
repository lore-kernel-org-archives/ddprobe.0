Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EE73201
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9645CC433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672157487;
	bh=Aca672uroM8jJFjT/JKY7Hb8aWjb4vdlL+Iwsz5Tok4=;
	h=To:Subject:From:Date:From;
	b=BNPZ3/8dH4uAHFBkAnnqRK5MU/AzwUH9rwnHBHOYVR/EbZC5lY25TN3B+ZPkm7aBh
	 V2qYXwe5yegm5fmgY38uOKcaH7fQsnso4ACXujrxUdxf6qeR8sIGLwum1PnO+KoBIJ
	 Ylhua5xg6VFYH5P/fs0Npj5KYdlWTHb0CdHxUBvPgTiO3cnrBGFFaMLdTRiAqJJUQU
	 dWafoHmAOsBeqJTuHe+g1XZkNFAuDyj1yk9vJLF+6TAui9n0B+nXkMVD+LgUBzeNql
	 QxtiyFDweb5/8BomGQ6cl5DiXW0LP70Y7o/jQriH4+LSrBuwWgKVAalPV1k7yAuNQ5
	 dt0o9pZOJHihw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77A77C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167215748744.19116.4900854771739346367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e24860e1dc9cacfb50c8401c02094fb7a31e1b334b876fa2c4d92e891c7743
Date: Tue, 27 Dec 2022 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672157487
