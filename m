Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4691A1FCE
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 22:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8289C433EF
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 22:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684102745;
	bh=bXklDWKDNtXtZ5Nk5BzZ8cnWcENIPsigKTvmr8NcsZI=;
	h=To:Subject:From:Date:From;
	b=BpHEZx6YyVYQvz3iuX1aqPxhw4y05a36zoOD5lQ0kMzoIjuYMvT/Cmgz1kYu/w569
	 KXKZRZL+6tgi/pRBHkdbx+H30vsZzRz+o8yo29UiEB0VT+bfKKxA1Ip1t/2BZn6GO+
	 h+rtEw6Je5hN+G6MylrusWYSkSqTIImv70iter9QuxO2a5GdZhUvlcPnKofMy3DhgQ
	 eSKa68Pk8gubcKyWomDo7pwaYnCLDdy1y8i00B681vTq0mkq7bfh2TvQQ2Hujo7Gd9
	 /XClUBK15OdqZO/46r3I0sdWE9MELeaHnFgHBDC3AdM4ZA6j6JYqWm5D/n/uJnSw26
	 TpLxTlAuNbQkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAF34C7EE22
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 22:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168410274581.32106.8134639131354579134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fbdb77b4c0e221410ce62ce0a88f5903f542da24bb95e6a143dcef3eb4175b5
Date: Sun, 14 May 2023 22:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684102745
