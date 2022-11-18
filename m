Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1FD53D78
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A6B8C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668787254;
	bh=MQvZn8XvKQi5y1q7Xz/HHXKxy+mFxUhjM11nJ2QDH5s=;
	h=To:Subject:From:Date:From;
	b=hfo6BGJ+eiRDiXxrtM/QiPi0XXewnFEq9lGV96Psi8cJc9jzW0TvQvbiHli3SDB+z
	 Y7LgMHXzjCZx5RKGPds7TTaSHGxZig8qKYQhFPNV80ah1Ci3QSQc54i2h+opsCQMHF
	 ydV29YaKjCfIjiJqlZgfary5PVM4gYBN3zvw9f8kKidxHnx+0ZwqvaJnaszytg0+xw
	 QLh0lkd/FgnL2trfJitBHEui2yOSSgNcW5hWhkIRtwfQlgLKwXb5b0+Xze027WirRK
	 bIxhWdgYK1/O2bmUU0gMnDLkSQdpM3UVHEBlXNH6JMyEpi9J3sCgkcOCc9Odm8L81T
	 NmSY3WoSCszHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53E25C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166878725433.19394.5080709635743175829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 317b80c43eef002a25b09d9549e37b995416dd03f4ecf7c9145313da3ef16f76
Date: Fri, 18 Nov 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668787254
