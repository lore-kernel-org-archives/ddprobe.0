Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B837E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 15:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA726C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 15:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674313925;
	bh=Y4CZdR8EvTFDrA6NC5UadBX/7+YuHoXp442RMNmDyU4=;
	h=To:Subject:From:Date:From;
	b=cWqM+lHbQ9JPL+yV4Fxk3JXTO1F+WJNpHaLi0KjjR8bC/aJpf1oVlh0YQFKPoxXK4
	 gvh9cO7yrY7K7BWh1CoeN4r2zjTOFRiqUTs6EiTrp10qcRI9PAaP0jLvJIATtkpDoL
	 5u61NxrOSWeVPpQJNlsHb7d9QxqKBJt3O0KPAatlJcdWWmYb6/4v7jQQCn5CzZqShb
	 dfjV9NNk34Hg6+kQRPArj2Ckkc7oxbFPAo75F9NwrijpmLlrxXcWen0BY7xpdL8nZr
	 Fjl61sOXxLUS2HqSt8UrjLUwLL62Q69rJjMPuNpvHceBCdXhXq2Yhykq+ZSMKEN13P
	 cJXmAZn7Gwx0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE278C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 15:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167431392577.23162.17561860155890309386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 162c57428716d671001fad1c753f9180e8f2a83791e98e278137402c5cded9a4
Date: Sat, 21 Jan 2023 15:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674313925
