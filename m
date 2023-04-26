Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3121859
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 07:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC6B1C433D2
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 07:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682492826;
	bh=41G/oM83pOCZ/ug5kbEh14KejZBQAA7jI5cQB4JGhYQ=;
	h=To:Subject:From:Date:From;
	b=UCFdN9jd3lVgOHMgdmrZwJLVn6XRWgmInhIsT/lVEpu8mJY1KaDNt3vF+RK7c0cYy
	 GlheHabXbtiagpgvVHeurw/i5VweX/YHGV5aYHESuHSZPYKx5v76K4bgGVg7jAp8tB
	 Q9rNeCT0ANn/lerfm91bX0k6z5YRa8RCIiGTCRr+xSciRabH4sAM5hZY425K4yJ4uA
	 u9Yenb5dh6oZjzGW4nt4tKPPkW3I70Kj3kfO+Tm2+xYATD0ttHUBKi2q+SlXIrm9+x
	 el6SAa0hPoc10beTlM58ZWXXyEvHZZsrisbVNazNbVX7831YXazM9NcFF+Ps1g4/EQ
	 8wLoUQRPOUeNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB959C77B60
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 07:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168249282581.27452.13630313932669660153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce5b2469d405aa4fa7d11205546df39cc4ba35db9e8d8748c41e3b5608f3bdc
Date: Wed, 26 Apr 2023 07:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682492825
