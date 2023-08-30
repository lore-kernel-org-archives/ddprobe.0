Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8000046BD
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 11:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40C9C433C8
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 11:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693395848;
	bh=bfd0iXB++iOwUOGawmVllnQa/gKd4UrHjnlPHzkiv8U=;
	h=To:Subject:From:Date:From;
	b=hUgK1sypca6pbLX779iNA1Cn207junJldavufhLxgMsxVDVZdlsFdoHGO2SxG9JPh
	 f0RdY6jM0oYAUnhoKHr09oZTkTK+c8zcVeiZAy2oXkC7ZzWMGE+JxPBR68apdu2zLo
	 n5GeKOZ142HyoxSP2SN1KH/nKJsaXQ/mTjnqH4KZuQtyT80fxRpkn8hRKcOBgmU1YJ
	 M2S6Tl0/6kKT/QP7L/3HOkWMfAm0g/WULUSG+dfKOzRHchbI+Kf2QqCb1By8V7V8HO
	 +bsCtl/NwUehS45r2nKA3wNjdhLIvH4lXnF/PHkWnqJnhYhBBBKLfzF4xLxWT3kVl/
	 XZNct4eH1cw3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7429C83F14
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 11:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169339584874.26220.11568529540303131000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ab4bd6a72690aa2086f6bbc088f16469b33c26dbb8778b0abf078b77a70031
Date: Wed, 30 Aug 2023 11:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693395848
