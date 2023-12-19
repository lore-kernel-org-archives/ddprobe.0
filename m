Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1BDF13AC4
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jI5aUIIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75390C433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702978096;
	bh=7DDlUYHeb3I9zFHA1JTbEU1P66P8huDPLt4Ssw5tpLY=;
	h=To:Subject:From:Date:From;
	b=jI5aUIIPvld86MhQiKkfZeK3d1Zrcbf2tsYSoi+N3LGnXM8TQUG58W6/CO63aTGtx
	 d/cCEC/L2p90sFUgaZud0nKm5dMbQPg7UwlMuiybUWF7IbZqUwpT9zndp+nPdwPgdI
	 gEbj1S5mmVf1uF/TCluX6LeVoh9k+Em2SDdDuQpsbT1zxVhflbaGR0TYygpXzLXXTd
	 A5xMF7AWp40OCZnIwkIggVEADuSRfkEk/engE7uDudqg4br6IsbYX8iMPg3Qspue7O
	 ibRur0+LKDaT/CGiDmkxc/vgSar5sHU23AcpJn7Y6okH5VvXeDkpW00auG7smMED0Q
	 MOnZ4yhiLmLGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E5B4C41535
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170297809638.2267.7580414956411845906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c34d701f8feb3169387d9e43ebcf474cf7cad0f85a910962d482594c382473c9
Date: Tue, 19 Dec 2023 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702978096
