Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EB89447
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 10:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E3CC433C7
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 10:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690281728;
	bh=PS6a0veaRCyb3Xg40geLIIG5L5zUsNtvIVKPNp6uf+k=;
	h=To:Subject:From:Date:From;
	b=TeVyKs/q4QzGZSbnMz2D+cstD/tVIycXuBz8KN35EBHbe+qmKpsNFJHi0hQVRUFsk
	 nJLKf5p6uBeNc0umGWnk0eZ9hnKjIv5oOFI8bhIC8cXeOGKWkZL5ArKVvdT83y96Yf
	 y78XPFHQunk3fwrAJM3cyB0rL4eCkp8wopseTKq47NUJrZf+nBvOIFABPu4ybxifx7
	 o/8MiLmN7mP7O70ok4NYPoWhmG59FDPO6yc80e9ny3hNpHrjzTYwoaNjPr0mju7idi
	 IIjoldTh6QsztqllnfJB129V+yW/e51IAq7XIO7BnJz2aUA/N+QQoKZcaOUaOXbJLf
	 TSWHyod19QgXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF794C001DE
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 10:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169028172870.719.16738506857917048903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2ad34b45e32746c0ea1bb9c8e9f2db9b192a61f1f4e58462e8d288a32dc284
Date: Tue, 25 Jul 2023 10:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690281728
