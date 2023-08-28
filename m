Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C41636D
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 00:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D004DC433C7
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 00:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693182848;
	bh=QWiztGy0jaE5oronSlIfo4L0FYBDWUoSCV+T8pO7HzE=;
	h=To:Subject:From:Date:From;
	b=gIhYqJ/XxKOyUs41A/trGHIiHckmU4UsdfagOova3WDeDLanfEiIbSbYr5d3MLGg4
	 9CtafXWC5Q6YkAFTLh1R2vMNXWBlatOtJr3GZIAJK3CSlkA2AY69OY27YDPtV4LCSp
	 jWSCU4JSRKbb8ThCaf5yDrXi4Dc2sZgXZJTqd+xi7QEGv2cDOILYD6fZprbBiUry27
	 n2KHjE390TS6nGKi/IgaMLi8ikzsXgXSa30Q8wEEOK9+PXia/kcToXwgVTOet75vWL
	 KrArQPq+AiL5b/HmjHowsr1ZQSgfEZofkevNiBOX5KXs8HaXDiHvJTV5iSnC1+Glh9
	 mFgBM/aWS6UKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC547C83F11
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 00:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169318284867.25160.10578886471141850200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd228f948f9c93d68bdf88d5f289c55958d7fcaaef8d1cce0b96240176e7ac80
Date: Mon, 28 Aug 2023 00:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693182848
