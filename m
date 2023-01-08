Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D960C139E
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87FA3C433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673153487;
	bh=fno1eezBc4qZMNcNlVk3h1OY8e+Jk5Jlb+1hMYClX5o=;
	h=To:Subject:From:Date:From;
	b=t0DwJ1bA8iLWPu54pz0PtxEJEoCdFuaT70bxwKSdm7uYWJXn1eyRC4R1q/fKtFNt1
	 1MDv82p8zGCZIp0CVwyqN5b48sj9Hy4BZqoIT1i9uY1Flq3aLadlO3qV4ICaYhn1d0
	 kviNCGAlR0mK6a6kD1yDMGXiB4zQUENwjmEmbX+DXoc5JLkjz7ybFv1rOiOqLZQJa3
	 TyZzDlXlvGcdKRGGpA5aUH3gYS6tDIIQq4MKKNp0cHqIluhsqtoYaUB/RXJK/iJ+F9
	 A1Bh2m9Rpd2pLNn1Nh66CB3yKwjs6vTUvLYtfbkaDQI2ptJ9AerYDDtavonqBdPRA4
	 oGyPkuVt3DRDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 695F1C53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167315348742.28883.2767430919393071980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 964d6f3a3c2eadfb4e156f8400e1e1c2a44f9dce292a552a53c936cd69ed3d1a
Date: Sun, 08 Jan 2023 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673153487
