Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4CF062B
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 03:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 703C1C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 03:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668913254;
	bh=XyGx/7KqcZpdYHDFF0mA9OfNwSjkqB6mqWHlHOYvGCE=;
	h=To:Subject:From:Date:From;
	b=rF914Bk+HKXmiTEi2Q2/7SDhU5/iMKrv9MIIjcN0Cs0F7W/ZZt89wxOXUzXRpcxbQ
	 s2HVdnO/yNik6Ez8LrhKtVLVJ0W/KPxGEB+VH+E8geqchUxgXc8KD/WsCEwgAKWzcc
	 v+fC9igd7wvvNLU6j5vUc8khHnKjGf/2gJvuyG6sw4q12TmP/Yiu4f64/++QWUMtvW
	 Bc7t8BVdN7yvzNBC8KQAgS1mmcKBST6Qv/aU2mb7/BbK2iAlbHjx42boZa9yvHSbl8
	 649Zu7+SFbEXTCGCSxg16gZOv14Q/tbiI2FoRL+vox10H7YjgITQOd1/2PJe4d5LO+
	 vWyQrGKL7MXAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5603AC433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 03:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166891325431.18621.1296360412006237131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2ef6332e747a4fd5fdae9ccd9283be47cf12c7c250f8dba29c35cd8e5d9ff5f
Date: Sun, 20 Nov 2022 03:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668913254
