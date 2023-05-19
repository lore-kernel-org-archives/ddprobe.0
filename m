Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441A66FAF
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 10:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E49D2C433EF
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 10:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684492685;
	bh=5QI2AsKTonpVUJy8sO4V88Xnp7tnzoXdq8MdLR/segY=;
	h=To:Subject:From:Date:From;
	b=CL4UKk1ugNE4fHd1CjX9AHzFY7zwH2KwmewNAcPScFmnZPCC94lF9G6zohFjVdO1Z
	 VsGnpLFXTzFfdGmbdm7xBqC1HhLF7syYjzde7u5Pr932hb5Pgdz1tYZtAmfMAquojO
	 wBPQ+2+VDy14ibvfUtN/Ky9Hi46G/EhcC/FDai7tq792sLMykF5vbMpmm9UZJaHUL4
	 vVUCd1n2ppJEy3M1XketPAmON8KrPFhJr17PkkoTirC/XiNA+JSYfZBdpznJjlcJ3u
	 KPPPjbiEkSylN/qWSi6EOSyn0x+dtp53kw6/+2RZlZfwhDmxppRWNqC5mrcugycbrQ
	 ClYmdNTJJJ7Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB7D7C77B75
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 10:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168449268582.32605.9988674379040487042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 912c15fb776243933dc9905d4e191016f29d0d694f3bb675f23069307b90c189
Date: Fri, 19 May 2023 10:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684492685
