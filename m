Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBD87C
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 04:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E188FC433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 04:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681446665;
	bh=61Gy57ga+HyD8qWCgvLFPf3hffhEiYrOwqijwBY5JeY=;
	h=To:Subject:From:Date:From;
	b=nE9FkRSChigSjsV8jabJAyi0BGw0QWOxbb3FNS1pulRZ9wjG1ekHu0fVrl1wBi50f
	 KVucLeR3XBL3nN1NqLPbYMrxYNabe4iv/LwduDD29NXeZ5nvUrAkobXium5cIDZk21
	 jlQTYiP7DttewcF97GfeLH9jd1VHcL0yrYB2TRI68/N+OunPRGhhG05sMJqPRe328G
	 wdU2KkqIvrlugW4d8wEtSo4CWx6z7eopbnF0uPxht5qSHED8+9i81pP9EU7o/7O92p
	 7u3ktdadkU3SbcNNxA8kp7funeXSrcfwBoWcGsE/RLf0ggImC2pTYJ0d9oDhlkg/r1
	 rExqNEHLzWWvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C33DEC77B6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 04:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168144666578.15033.5296372962262428503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b56964354f80bf0caa35842dcc5d7e49a2a759bb4ad3e4fe8930fec0e71c86
Date: Fri, 14 Apr 2023 04:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681446665
