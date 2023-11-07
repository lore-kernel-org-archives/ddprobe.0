Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06CF1C12D
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4z/bVPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EC02C433C7
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699343896;
	bh=GaPvVRkawSESdKb69a4UArI7GJ0Mbry6CW4Hdk1ox5E=;
	h=To:Subject:From:Date:From;
	b=g4z/bVPGjXWbOyrqSPs643ctnOz7uTzDlNyemACD65ktLI0bjrKDbxpaxI4NUUN1s
	 +hO+AQE4HY5pUFrnnu0XMkUg7yFgivQapGeWTVncTIotqCHRcdoiSp4m757U1TpbO/
	 t65kyRXVBZ4Y4J3rpP/Kz2yOh0gG8V0vZ1gDs8HimVTtEFB7+gqODu+73kwqJ9Y/jm
	 ijwrbS2gDaN283noyW8tWPSxcSFBB5PvgOtUFf1xDb4ytSeoIX5ynYhlD6HyALzV0T
	 LOHvpCYdTmyKHohquCKMwoaCk6x6qp9pTjT5goaSB+ae/acQ0LeVgpP/SzDW4FvK4e
	 WI3l99+fd1pvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 616F6C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169934389639.14573.6145771277320073289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afde80f052db1a74827746bf8199db9e629f463906acc3bb1db46361764a6440
Date: Tue, 07 Nov 2023 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699343896
