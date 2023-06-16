Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5859E627
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 02:09:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2210C433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 02:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686881348;
	bh=DjhDh66YtDDRR2t2xxUbKOGQ2a5gcYKO0XmzkSvo9c8=;
	h=To:Subject:From:Date:From;
	b=msJqTc26XBkluaZ7xmjYkTJdAaBCEmQq7BQRwjnLwDYpqP3DyC0NA4DfvV8MBCJ2b
	 /xZ5vd0J3xcchGkuHxGhRJo+DxFCSmpSQLJ7/LVU+emMdPL/tzuwYwrX8ORvHlqpyA
	 AOPt1B1e/NnBa1HbwalqWWADRiLAp9/ufkcfZrwR3qfK1E1aFusC60ZKp0g6KhCM9X
	 jgvILdWdPb3a8ulQueAh8Kr+8Hytxhpqc4uBj6MTWy+OE/l0XcCb8ffQnotM23IkrW
	 Z0oLUjTrfzlecGq4YXpzZyXpI5AL6UYtbfhS1ZH2rcmcX1U3RVDR23KHsXDHy/Sz/G
	 /a2hD+xrFkzUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D94EB64D9
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 02:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168688134868.11342.8748027292037660558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ffb54b629a15f638ac58e8ab5e216d28da50f62a86634ad0c02845b4f8dff66
Date: Fri, 16 Jun 2023 02:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686881348
