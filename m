Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF054362
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70EA4C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669614054;
	bh=KeODyjJuGUl/SAhE8GbNK8rmTPWAzOLYxq8vNamruZo=;
	h=To:Subject:From:Date:From;
	b=LevnE9lvckP61EmsLiWDUg7yRFs1y+X5qPcfUiYChMHWPawVlsUdVXf4lVXLuQ6a+
	 CQ7LxPJHo+a5H0Oc25XQFcqVE2dyk2lA2QTyzsqF5hFD9ZxgIjLAQRL5IJi714/Wyi
	 YsEp1oaV+deFmU3tpZmNnsrO9IGGQfgzDK5r9lFtDIyEwzbYfKD66+lftoXn1lpYJ7
	 wVhG/s31kAi2mjoOp1mjns4C0+tizScX6EzywRuGuFYxUn6LWWxb+y1OPWdHeUrinE
	 AHM7exOfFMAnXumshMLh66bS11MyW5FEbCztedQUto5e2HREwyqXVJqmdRDMElFRc5
	 LRxglI+kc1F7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 566A1C4321E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166961405434.1764.9901944775026693653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6cff1b51e7ef4133ac449ff01734169f79a872b46cd4c8a2a44e1c0e0e418a4
Date: Mon, 28 Nov 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669614054
