Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C3723D8
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 04:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB8DC433EF
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 04:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684297385;
	bh=JNYhSVQ3YeiYAL40jT/ev9p/KlDMW22joCTwKVJQPE0=;
	h=To:Subject:From:Date:From;
	b=FYG2W1nghARZjGrQ4rXQvZmFzmYzRQbK+gNdpKwN07I9LMYZm9TRphaU2jipxLRSJ
	 7ak2+kDVcFQSYDR+J8U2qDk6p7tAHZEjvy7W/QRWGM7YqWKf+ctWom5fzw9OgPojER
	 8iWq3/nGBdxocMJIeoss6ZiEqvpI7q3q8eVXBzqMx+LBzurZB5MmTxNR2vPRhPLI6C
	 fFVSVtH5MZVC0wf69ns9gYOobn3ajNz0k38NkXdIRJUv/OVsYQF7to8ZVM1OhtOstX
	 LR5GOTTfW6I6WfLdEc6O8CUkkvNVORwDyzhnz8emS2TgPvUP7LarVMTlw1nbFQBF3d
	 TTtP0vce9/cJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA8BFC77B75
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 04:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168429738574.6903.9686557411082835615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f49d2d742f78f4cb667effefe2472c6b421e73285b0d32678b99ffcc085c5dc2
Date: Wed, 17 May 2023 04:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684297385
