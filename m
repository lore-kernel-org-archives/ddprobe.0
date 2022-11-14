Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F1A23A8
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69E56C433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668417654;
	bh=TTxKWy9yV8bRtKSZX6PVCRp2KV+QQg29inH/N3PyVls=;
	h=To:Subject:From:Date:From;
	b=lmHoQK8JnXrnj1zOER5YuvjVc9wFh350TjboM+X+Mp8byQLeZ6ow9ytHd1DhTPLuy
	 218NB3L+43JS5P0ZbqM6Lo5LpqYYI3eQ96+y8KPUjk83pzNnqA3h/QPwwgss/KMVgk
	 ayT84MTGFdZLo7NWimAtyxanDe/XVioWKn3v9sbb3NM1yvC3amMelKWlPBmIgAb8fw
	 Z7pZdGrCP96rQAgPgZZXmvX016xp+3DxJhjOYl0Tg+ZP2Yh6WhlXFm4hwwAOOS1gNv
	 4hGFtCR8Dur8KjRNzPZ/4lsCk4xaF4gHvm+o7qkltwm+oIK4O2gN5HluR3U9WxsW/P
	 v9o0Q7q4cM3HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53DD2C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 09:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166841765433.6154.1528647561989938501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a1128b8fb86a64ec216284921d90b00cabf0edfb9b9daf93c4180c00b44f493
Date: Mon, 14 Nov 2022 09:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668417654
