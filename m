Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3802E33D5
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 18:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD86EC4339B
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 18:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674842585;
	bh=3FcPus9sjW8BWHEYgB1OfbO4763K8Koq2EejiDMWS0w=;
	h=To:Subject:From:Date:From;
	b=mTcvXJb/V0MGl1RbLfPFrde1JcDmr2f1L+5EmeVDfGv+YSqH90Vt+Bh/4uwxq/5U8
	 bYusmVPG2SXdguPzOnbA1eLNdsbMyMI9kzt3zYvYjHSusJ1aJzIzEfBYZlemyC/QKo
	 SaAbDgh/VzuKrShWAl8ZuzuAtDz10eV4xCEN8cLyDUqwDDD7F7q3X7GQxtUEDs4ipg
	 /rbNmX4Xl3tS5CVt/ggnT6VXwFsXk8Kcp2zZL5g5fKnHjyr36zNE3ZKFvLNnSfmvou
	 dpQDOuaZD+K9Eld7LS15OLbpHllJNf4q26enkhRFcIR7BCkAzLx4UYb4jFM7N6W9Wi
	 JKowWOK7k4+Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8277C54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 18:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167484258574.1824.5449231999314210722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea1d2ef8ca648db44b34aa9c3893093f01ef452354d7dbbe6a2a59e5ee49bb4
Date: Fri, 27 Jan 2023 18:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674842585
