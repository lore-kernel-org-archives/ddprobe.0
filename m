Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6777E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 09:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82EEC433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 09:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674381125;
	bh=hiSivMmSxhNchv75Jzvx0tEVFskE+2wR0G7WFu31GnE=;
	h=To:Subject:From:Date:From;
	b=gkIcTwwXthihsaNeGkOvdFbTr8+Z2SdZlfjifv6Y6cDGUXxTPKC2dyaQHYEjCN3ue
	 kbtaLMwzh1yiOonKfs+IX/zOlbGUJ8PxAVJXGV/BlhYROws8IQEwQZgsdvsPFaikwU
	 rV629qYYDgA3nTUzBdOTGntY1RZ4Ww/EiaABOBM2lCPFWhVZd8gFhHgOgGM/Sfnnk+
	 rpBGZQtAR7piejb9pi/ayHV+/V3MG+6YXjsUjkxn79CtTRFN6pta1QyMqIjnXSZw0o
	 HP59xkR1zfAbsL7DL0v7FIAnjAtoRBCL/8wjWRepL7LWhc2GC9hYAfhXaS37lhnSbY
	 QhUsbwgUzotvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAEAAC25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 09:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167438112574.2209.15400376373586342396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb8fe9ae66ee1db2b5f676d9280e3fff6c10b3c0e6d349be16c87fda07ed535f
Date: Sun, 22 Jan 2023 09:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674381125
