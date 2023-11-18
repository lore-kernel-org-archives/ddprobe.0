Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0462610975
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jcp/frHT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 782AEC433C7
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700345296;
	bh=GzkIv15qDmoDddhJiQcX1r2Ako+vPABKRU6z6hVclsU=;
	h=To:Subject:From:Date:From;
	b=Jcp/frHTaQEK9Fpt3iRZRYOSBtIWCvVavPX1BKycH3fYcfjBqSUFwMVM3hPhxqZnn
	 Sb1f1vGX0KlUa/mVjWCx/UvjlqJx1442Umr8mN0w/Z02/PXk0l+OCVaTimq7BmFVIQ
	 oH6WWJfxbtuYXIM2dezEarUOV3iFaFUQB4GN34rULewTcyccyG4gmbp0IXYQN9Drhj
	 gwuHqEwuvM6IxO0Ex64YiFkIrUy8zoGCgORD+dxDsfe5uJqFIR/RkcvtgqHS2Q33q5
	 Yy3glEy9qegWsqrS7Vprlqta+WRy+fmWxovo0uuReOjVNx21vg3yRdaHMpu5pffXaM
	 yOKe+gYSsbqJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6588CC2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170034529640.28813.15606411264718480887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b0318f0659ca1bedc5b6b4a2bd4b24ac0f94e1563ddad41189e8e5c6a3284b
Date: Sat, 18 Nov 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700345296
