Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8163F803
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 09:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2206C433C7
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 09:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690707728;
	bh=/OFJU4ZkoqHihlqiAWm2LqHHyGvbYBgUZ+pcnY5oEOE=;
	h=To:Subject:From:Date:From;
	b=P5OX6cDMCLVh8NbwId6SS5CYnxCYLwR//mLO8HS0B048WT+D1vxXgcIvEQiDZA3rD
	 7JqO5BJGALkLQv+LEHxtW42g056iSj8//bjQyVie7aXwR8aF7vsDuhZe2aJ3my6P3g
	 9YAMOdHpPL9kqKnauDHiJj6B1a+xut3m1tUBJW4LdwVS1csv/042xiYyCm564tDj7c
	 tX83qyIP545WiWKQhyAMbluOpdf9rLlv3jKSQf2fqiVE+Ou0fL16Haz6JKcB/9KZtb
	 B32N3OLngDTckNjZLasVzDDpOXNj+R8ZYv26I0eQQEb+kg46CU6OepLFSrqKamzfUZ
	 r43S6j4KxLGUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4EEBC001DE
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 09:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169070772870.18059.10633774702348161554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59cba89846e1b4cf035cfdf448df5e969a100e935bc4032b79980ace1795e4dd
Date: Sun, 30 Jul 2023 09:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690707728
