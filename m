Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB7DA79CF
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 16:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0ACFAC433C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 16:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692720849;
	bh=ws4+TYsghVXzpNpSJTWq9/XRwfM54HDk2Ec4jhM7q8w=;
	h=To:Subject:From:Date:From;
	b=o9VMBrUDmOg2q3/hMsvluC64eeOOm8ofQf9D8bSnb2UAFzWVv9mANYIXch6qZcm5U
	 r3N/Z3WH4gO/17L6gm+W4uafWGeR3zI6fQZy/aHNJFMWXVktISgkAb+Q/3vnFldYMG
	 UJwiJ7lIboLRinfirXqaRgbEwhn++pv4gkUskxRT+tM3xEVU10bMUGuQe19fGllHmb
	 Qgm7e7DmCgRHV9f4CSNa4tXZfTsyQg06p7982L7NxRqhbXv/IC986Sd4PreXBh2OAI
	 hT39PzH9PhdwqWq/YH750ioUVJfeeUmzNZtsSvdCUxPv3WBDBqiRJP6REaH2/IlXrO
	 N9m1sXBPTSEZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0D13EE4993
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 16:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169272084887.9331.12698580965552963794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11927d44876dc2c438708192c649f22b6dc76a91c518121ad937e5b7f0841bff
Date: Tue, 22 Aug 2023 16:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692720848
