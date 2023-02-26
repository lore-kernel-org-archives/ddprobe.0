Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4785620EC
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 11:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E41A1C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 11:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677409565;
	bh=loohE4iwgWYpkW+4h/5/NVXKwEH+29UlHDiuzKLp78A=;
	h=To:Subject:From:Date:From;
	b=e0QkdidoRVF+h8N21MeEB0ssw/xEPV+Oa5oMWuNhaQnAMKBhrHvNWzdRaRHgwKrVI
	 LVUS+/3ixxbMw0Ypx8gd9HUtBaOUSg41pHPgWTdQCtLGHXIbQXAz/AdPCxxjg6fm+m
	 nBGAo11P8ekLxGvU3IdyYypwK3odlushJP5Bt49FRM2Lh2dydLby8ihzopfZgVraLO
	 2ho2sK76sXTO2vjDJ8f9SL0NRAnJwM4Prv+RMqLc673zO0xgrcx2+KaaWgGWk49WGd
	 /cIkUbv1XjcaAu7CKhkGX9prCe/x7Q1cvwW8kTCO8Z53JMfUHb3exMFxKp7RLVjZwu
	 QbmZkpfNamJDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE6B0C64ED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 11:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167740956574.25889.1296568536947643629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c977438c4cc6b5c2bb8beccfaa3fe2592b7cd49b245b5a2a94dbb7fd8500c5
Date: Sun, 26 Feb 2023 11:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677409565
