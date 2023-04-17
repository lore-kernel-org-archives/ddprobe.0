Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266371C05
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 08:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6BEC433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 08:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681720085;
	bh=gIUH5NytpH2HvAYYVyFPTyzUgElirx3jG0J+FUxXwB4=;
	h=To:Subject:From:Date:From;
	b=DfOzlbhTl92J8LxI+pK6m6jSexHn8qWkZhQ2Z1cK0A5lH+qy5y0Wb7p0bSy9dvkRk
	 kWsAG+vxOODI5RmH35MEUUpfmlIe/U3k+6YEKGDcVbdqpIIp6eiKw8b+o2sfD4CPvw
	 Y8Kexh1bXSttVlpYN82oPwa3K1+5MthNug0kJInprz/Qo8Sly2h4aC1Qom36e5twSz
	 6Cz00wK2UAO5gUw11xIeMD78wZUgIyNsKD7EofQtyUe12dtMxlbc9KJjjfBt1TV9fQ
	 5z++nJjn76u5bFrAzqECQVdUd1eKbIHLrgMtWX1wf/zgkrqhifjy5UJY0UvW1e34Sv
	 NeKxSB+s4UorA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F75C77B72
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 08:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168172008572.5997.5062062170953631150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 011f30fccb38dd0a10fc1f7a382b5058a04c53b129edec52774d85cd5b7b222d
Date: Mon, 17 Apr 2023 08:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681720085
