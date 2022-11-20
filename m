Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A933220
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 748DFC433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668975654;
	bh=tCthevUALlJXEaN1kEROjcYMKEk73xy/k/xulEKJefA=;
	h=To:Subject:From:Date:From;
	b=QqrQLIBm8simMttpj2QYi/kP5JGJVkEQcwE4ASiMfA5agW82gLP3SH70xq9Cg773f
	 K5ONo1vj+s7ZwTtTD0bvXLpvlIYNXDFmQlkn0UuMxr51LkNRsfaGTB432JUdE2OI83
	 43eotlt72488/aNXi+8mycfgUWzKgfd81nDFMH8JavbsbXJ2TSGvYxq9KUhwNZDQjP
	 Fj+ZtMZVS5yTS/mTXWixCAnsYTG0MUhJu+O465ccRs/bSp+oE/CoNPozVUnp1OsRnZ
	 3IXsIddrxq4A5N+m+WlwXPke+wOrn6k58l6SsszUyf0eZc+aH8YUUNIGep/aq6Ykdh
	 IXSFaUok/17rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 563D8C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166897565434.25209.9391457574038988877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ddaffcb23d1462d2580c66f3ec94da6b6d441cd6dca7d894aaf45ccf32ed97
Date: Sun, 20 Nov 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668975654
