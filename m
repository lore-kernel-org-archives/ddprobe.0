Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35B32F33
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89F1AC433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673562687;
	bh=1TpEMsS+v0t6mVDSDej1HHAZwPb9V4mfSWr/TeATbOI=;
	h=To:Subject:From:Date:From;
	b=TcxqneyM/zo2qm/5SrALsunLR2DXREV/8d/opIwLADEUbVvJU7utqVSolO+GVI6K6
	 eWjoR0ZcBWHW9+a8KLbJuO9l+ySL+MgxjRYWbPSR6+76N99nTRTjtpmVtc4cLuEQJb
	 smmTHCKag+n+UjdFtpL6sdgXwiulGzVO9vLl1rK5sKpJHs5CemKEWnQztpZDNffVDH
	 SdZqe9lpDNeK+942IYW9/H7o1xk9QbMraHEwsvrLRQpMl1QsLf07N3sqk3MH+R9SVW
	 ugjC5LfDqM7VQDW9K94MOuKiZIBtIDW5dsoARsgpIsCVSGXAVkuswU5K7gQeQNi/i2
	 TVaWPahwiXYdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E237C54EBE
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167356268744.17583.11433953609119311758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47439f5943a050f8ceaf7ea0e2a6ac4c9f9b8adba762b6ab2411239f3c893c5e
Date: Thu, 12 Jan 2023 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673562687
