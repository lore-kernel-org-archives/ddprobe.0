Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1834B1BDC3
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sa12Sw1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78BF0C433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702994296;
	bh=3jf4+WYGTdrSvrT5m58euI9W962Jb1Any215g2CgjeA=;
	h=To:Subject:From:Date:From;
	b=Sa12Sw1F2+kQClLzXNEprTuKQasqWOtjgsanZMJaLTRw7+FtXdd9OIoKocJmki3Ld
	 /rP9Pyo4tnOJHzcOSXjYh/Gugx+XxjDh3SOXkGzlvzUIucURMp7MUjvDbyYclMV0dg
	 D4vK6XcA58NeA3HI06C6X75bvrkL7Ws0fdWbFiB880Due7hwIiLyy+zlalvK1CyNRb
	 CwmSYJ0rT3KE/8PvGz2SDxN0olxuFSNVAF7ftq3J/8A3ydOXYHonHbcQAUt/Us5pLH
	 sePGTdsFfNjHdPZ+RbxxTTyvwDYcXmq3SOQyggWhllmY4HVK6BplMoYO/FiqEecHn8
	 YsaPX1aqEl1Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60CCFC46CD3
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170299429637.22752.18433845124331972174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b51bcbaad57373cf48276db10f228c9cc4c0a8ad036ba3796ef0a9bea3983de8
Date: Tue, 19 Dec 2023 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702994296
