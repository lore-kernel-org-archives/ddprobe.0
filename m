Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4275748D
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfmQwy+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72990C433C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702020496;
	bh=MLsUppNFomYuFtnnAVZlfhXkEqnatXJynEcz6AzDts4=;
	h=To:Subject:From:Date:From;
	b=mfmQwy+YZX9JOWdJIYrUAHOUvLxwfGFlGoM+bvYmLRXEmihLFVeX+AvwhggkRZetN
	 X6uMLxn3ZYKOazm2JB/Ae022YcO8N51eqz4Z77/w8iuRBsESmfIkUFkxQVFhh+Ly5e
	 kY21O0fF22D53z1/zAPnXO0ii8EKUkKpTno1J74gVrw4zevKcek3V0vQiG1Ao/ojA9
	 vB9jm1ewq7wEBzt+rrSwALHbxgIn4jvrt/n1PrVugDDCHyJcy8+p+0wniwlGL0o+2Y
	 1FBm1HVSwlB/7u72gVPg2C7Mfj9fdCKlJcqNNVxmP7CtUD7ZHZS/EmGBsiAP+otscX
	 6bW4NWaAKaO2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A131C4167B
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170202049636.29647.2017915969098609197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c6329b41f51e99bcd66c4dc12483edff858f84598b1e4534d13320cc7f307c
Date: Fri, 08 Dec 2023 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702020496
