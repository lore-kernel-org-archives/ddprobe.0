Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A5C5408F8
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 04:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12E28C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 04:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686373086;
	bh=u5EA7CR0cUU2Hp4nc4zlig7JHAJCpOcw+TPILpJW/J4=;
	h=To:Subject:From:Date:From;
	b=XqXYzJMXmS1zGPVmJxaBnDcD4uOIVEpm53cwi9wwBVcbYuQ6ShcWmXguAMPjAF+q8
	 87GNhk2zy4uI494vMdy4bld4nQNGsMHdGBxiYiq5wZsfLxiGLS1nK6qXvMbOKitJUD
	 xzxsF5xNBaso5QdftsubPEpbycSHx0uQZ9TKWHbMPDAEdaMlW7Lm2t8gycCkPTsKcx
	 qT2ZW9o1bLoUAQWBIKAL3yZe+BU8PfsrkfBVA0Cs8FikRUjrl+yWxUHpGpAUKFRaEm
	 9A9met5ksg1VycuztkyB3ANwYuPJZBfGpzmiyHAKsQ9wL0Fg65M83LveWmbFTM+oMW
	 8b4n2bkKzzxIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFD6EC7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 04:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168637308586.11439.4297814676472185968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687b9d75d86a42012025fbdd3611fa08e22350452e8c00180fb3ccf3963d5d7a
Date: Sat, 10 Jun 2023 04:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686373085
