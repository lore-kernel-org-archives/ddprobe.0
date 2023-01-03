Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E96BFAD21
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84D90C433F0
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672789287;
	bh=RyOTcYer18eL2qXCD1Wv/sq2tJL+WBg1ZODXVhrdFrY=;
	h=To:Subject:From:Date:From;
	b=aeXc3W/7PnATQjG2N1iQuluGFWv3FMJi03cK+ZI4cVIqTqZ0dXr1ZTqj8WTiTY4Zt
	 AzI/GzXNcnjN7U4imwInRWsb280HBFHlv91QOfCTcfO7UqwIUbcywo6vrLc2vYe4Cz
	 VPyDizd62aM28rr9WqO/wagu0DdurP18yK+HVGR6nUrHlap4+CA6tzlFvsKaL2klNg
	 Euj/Vms8F7DUShDUUFlSZ4Kj9/oJE5IgngEhztw/52SzPo/Hv2gahoIwWvsAa3xQ0J
	 xRQbu3rPTfZ4dXeBeVZiWkh9Ck0/xQHx47aEl8buvgNwC7o3ev/n5nMRXUxWnLgB57
	 a8Cn0AXViSs6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69975C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167278928741.19140.1558045835534454382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc62afa17fc16c6bfc689f75642b1d4f26997f42d69a31f1b93f12f59a8964eb
Date: Tue, 03 Jan 2023 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672789287
