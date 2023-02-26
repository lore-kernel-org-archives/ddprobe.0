Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D90396
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 16:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6C86C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 16:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677430565;
	bh=Vp5/ig+tmAPEKoIVX42WAgbnMyH/z3V/jeeqnUtSp24=;
	h=To:Subject:From:Date:From;
	b=eBDl3P9bVYQQwYuNEEHF8ZRNM5+cgiF7Xc05E3SrZZxOWgHFmjqFhiLiLF2YWKwgp
	 kDpd3dWmSzJw0GBdlBUQCyWuSG6z7G3HO3vcP4u/o4yWjPyPknhaYNJQneaulvPO6n
	 24tFt8IFSdD0a1RL+XN9/TX4EzU0CCT1uB+mCgGYgtQLlQAlHxuYtI+iZjpwf+btm7
	 Ty1eOd0HwEkDWH46D1cBgonFDus3LiNetAMtIdaIl9PAmXNbizNfIkb6pr4gzY2Esx
	 i+HgD1SsUufNk9MwfENTRospNs8A+mPLGGj6kszFY28Xhvfgf/K9e9Ch3OV6lZTI/x
	 aDlBKLr6nKzEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9664C6FA8E
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 16:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167743056581.13092.11066570440980337951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5502e09c26bc4db8238f7b60f4c4591a5e97e23bcf83a05514b95397338a51e5
Date: Sun, 26 Feb 2023 16:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677430565
