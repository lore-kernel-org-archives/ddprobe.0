Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539E019BCF
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 23:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CAEC433C8
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 23:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693524248;
	bh=IPQAEf9GBTwEa4GMGwtUmJBJ5JlDGkhbSYnKwWwP1fw=;
	h=To:Subject:From:Date:From;
	b=HR5G6BrdXEx9JlUs7VnTqMQMAN5BGeKk2a5PhjT/YLDFK2Xz/R8M7rzYEptwp4iTw
	 p2tyydvEMS+vcMpR3ArV8+qV0unU3rolLOG1wMoMiUTLDFlU1C16xxTBr1rGk4aQ7P
	 xg05Z02dsDD7nhhgeVHMIF8hEAx1nDo37FjEB/9wWqzwxCao1nbeW6PezgVE7RIgd4
	 XVWxqo+NWxBeVjtZQz4IQM2uihEUNV1cyY+liTOM8q05cHiISilZwAh3Z1jmpyQyEQ
	 uitnNMmpZHyhH4QytUyW82S7pMlehFq18KpDbiefwHv5Xytu0T+G0am2b90PO8JAQZ
	 SbbqBuaQ2wPLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2440CA0FE1
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 23:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169352424872.29257.7643441292988072058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff01606592e1d8b30fb2afd40b02ec9c8fc7eb6eba7f2d0ebe8c0d6dc5b7bfa
Date: Thu, 31 Aug 2023 23:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693524248
