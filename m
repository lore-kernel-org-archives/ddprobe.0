Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6947462
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A3ACC433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663618253;
	bh=hHMBLabWMgYDlHHKHQKwTKFxbLLBHbrrV8qac/rV7gc=;
	h=To:Subject:From:Date:From;
	b=mdjyG05RqXnS2cfba6/SP82ixhh44Ztky/DjNDxaF3hLDogPpwH5BL8CU95BV7x3B
	 xd8U2b5H0ZOoGmWvsLDPjap5Axf0Rqfx9i5xh6bT1R3uEsl+Z1ZYlxOV1Z9P0SsitY
	 fVDszW6t2walG4n0QESAomlQn5ihFct56xZ14f5AYeOyCKiuDY+I3+6gl2mx1P5xkB
	 57aOZG/JOKs4zNrVwDyv7xeSPYto6qREu2mHafQ/knLlgr5XeDkhgNWYbgHFWrPj1R
	 rSwm4zN69zElgmrD2uUFZLvotpvFFpYATl2t4ApP3w2IsxOnQ4xkcSSEco9HTei2EI
	 3gSaevwqvO7ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 590AAECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166361825335.28489.7620347981343237099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 930b935621246e62c077cd55c97ed7d624f81baf20164356829bd4980f5ac8ed
Date: Mon, 19 Sep 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663618253
