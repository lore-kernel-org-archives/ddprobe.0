Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF4A15AC
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 02:30:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C51C433C8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 02:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687055408;
	bh=zhYZZYE9HpIe8Vh5jBG0v8YWuhZ2qQTWrAhNpR9Pl/0=;
	h=To:Subject:From:Date:From;
	b=GAl0uQDmqs7OGW5E6LcpXq5sNNU7FbyjxjrLRMs5RpYqrIqvgmV6/q2KCmvQoCegD
	 6ME8ndpkhqRDm9PyrwY0oIxLtKesQl7lVruhz3Ffs1obyFCVbpuxTkyG9gsWR5PCvC
	 TkcNvCeEv1pjhGKd5MTMR9R2AXvcZnKs3kufAYidhha8P8oWsLzXqZL8HzsGTh9W1M
	 RTIJFVMpg8QrpPOkoMxifMuVHqCylHcY2a2aPo/yiD+STa8/eHKAS6xVc045NJR9Xa
	 T2/JMDOmdP5u4qCuzUxH0AMI7i55+4IRvT2hoQJ052auwfTiVkOhgc0Q5fYp6O524d
	 /LcqFhe/hNzYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B029EEB64D9
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 02:30:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168705540869.31560.14953523181253124657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a4ce768d56ae4961226bd982c74c4e86523f11e89320293c03eab79cf597a4
Date: Sun, 18 Jun 2023 02:30:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687055408
