Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDBF4366
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C81C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671159087;
	bh=jhUp40VBgBDeOBBd+FTEXPchMJl4+SzbWTvM/atV5bI=;
	h=To:Subject:From:Date:From;
	b=HXrdlpzdaICEgzwSw9eduhzE74Xozfl2UI7VyP5CrXVRdDlxCJIbFssbACvip+yQX
	 pfytRYniCpt9GWdHw3Gc6PtrdrhB5smMNi7o0z5wrSCfmPB/IE0KhgdamHnExR7Uui
	 PuY8U72ywynGUuUSjsOHJVEXUZDfxjCTs/4wpuhCJz8ysfAjFduhhU2wwp+dKHibIw
	 QOl6vBoGQT5iKZUZ5IcOf3pW10anpLvicFoZCB9MBznD69SkjMwkKVYulFoBjH0WFz
	 BWXCbI66Mj4pBJ4Y6l58+dGM5TkSgiOoBmi5nGmSuTn9cwh1ZZKVGq6S9se7wG1WNR
	 znPqfhRlko+7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 616B9C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167115908739.3136.5283425948532073092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d36ae1a735b2e08876b8351f032e19fb328e7468b53caeb883c1e2a482c4eb3c
Date: Fri, 16 Dec 2022 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671159087
