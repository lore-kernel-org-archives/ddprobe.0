Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E56A117C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CDF8C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671844287;
	bh=k7B1q9VSaVwLgyHJWsbvbR/hfNLe6yT/mvTcOt/YYCg=;
	h=To:Subject:From:Date:From;
	b=bUxaG985rQ7eQ2h9Dz+wAbLb99Sh/7iwVP+K695clSzwBVWQZFfFz8inI02qEm8xC
	 FprC18SbBQUxllYc3kyrOIB6q8VrBHjLb+GUMdrsbo3Or3g2Sm0kAk3ufGXa+pPk4+
	 hp/2SFCVCcm4goUer7tI+5kB+Rf8GNXlYPWqK09GoD63b0hkb6eVGgby+DqoSysOD+
	 Bjyj22Wa6Sowu6XHVi4Sgejd+IO3eOu+31KbfJiR2VdSrqN4zXVJuzi7lQOAXY6Br6
	 YwFWJmJroCLNgfS7h7bcChOW+YtszZTpuu59E+g8mtTM/0WXjzpc9xPAj2i18suTHs
	 1IVmE0nCnwUeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FC57C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167184428742.28607.14149955903168485896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76d939997f7c6cee10a74f6a3de9fbee2b3f847558654bb23f503266d737d271
Date: Sat, 24 Dec 2022 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671844287
