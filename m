Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D947F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 17:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3847C433C7
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 17:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690047728;
	bh=vsOnCYc9tJf+goq+yLKa0UM3+IsbQzAuHJjLUvNsGUs=;
	h=To:Subject:From:Date:From;
	b=cnPWbcmVDrmpDcBmdDaHqh9l1ZKY1Wldu0N+glaPmG/1M9eHS6CquSelLx9OydBZN
	 Kuo2X2kYMy4Fy2AcCtOLRrUO4ClajSe0AWwfp0+udL4IoDAhIIue9ZH9BVlGyQ+QCU
	 R66HZHHsq+ZTdR7b0S2agyA4AmFJ1Yvj6WDaIewDysxbnIzQaO7KhjtsBKLFvkdvOH
	 oLijn3wgsG05tjkyc+XtG92sajtfazGTl1dNMFoidB0HGnsxNrFBLNOBON74OFekQP
	 A71aUXy3X60b7wctpqlRtx8ZeUSKpuMcCYjmRP9GyyvYlj/L1LGKvuws97id/vxULm
	 /a4XpNt79C9+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AE6C001B0
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 17:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169004772868.18261.3063877887027916932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c874d5116135f3a2f1d540e19fb0bf9a6e7fb5ec8f3f2aef283afb3ca6dea539
Date: Sat, 22 Jul 2023 17:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690047728
