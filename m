Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E898D36F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8925FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671267087;
	bh=IjqBugu8meHqYT1MD7q+1yoI6jVbVbykR1bBM0xdVxQ=;
	h=To:Subject:From:Date:From;
	b=bDQB8CLsE9ajSu1BwVRtomYBxoycENoEVoOjqiSjQTb7j0p0LGzB8AdTSX4UTzbC/
	 NCSAYkz2XvL5ctA59IMaTcr9biot6tH6ZGfSXJ0qOJyzlrj4qLupgeLlMbKSXV/fUH
	 gT35kJxnGUV/oOPmhKf/BF9N3dbEJadaDRT60NvnuCoWkAiL20YKXAZNhpYU9p00an
	 4FKocx52lWRU5hqVYazbWTHfWB26uh5js+I6PecWDfSPnBL9AYtwKvcuVxdj+Gpv3x
	 cEHSJT46/dXP+vfKj1uZkZd3fYCGbYKf9d+XsvRoDCXQFhQGGPaIj8Bnjy2DGog0KH
	 CmRYp6OaoT/9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AB6EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167126708742.15401.6999492560622726662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c6068242872045493fa4c266564ba8ec6447dc264d333a85b4941e66e997e3
Date: Sat, 17 Dec 2022 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671267087
