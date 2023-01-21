Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361F6138E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 08:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE3AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 08:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674290525;
	bh=QvRTY85cSdb5mHpdDtIxZvArYwaqtV3v2+KP4QCaJoA=;
	h=To:Subject:From:Date:From;
	b=nQF4zVJ4IHPED3qM2meGsK44Vbkf4lkGWlU5Ynkxcm1wyABbwEzuFZGOSK8jt96sD
	 uesX5YZKtNWoIBBF/2dxSlIiEAcJrsEBAJfO0wIvbJjjtkvHtwDumP5X/pCadtLUii
	 kd0vvzxHfby3rh+itUzZTrfptoC9lIQfjsTRDgoqTTqPf7hzYIZ5TAFdeUONejcAVu
	 Gmchk4DOu0GTcR9MmR2/SWBWW2ZbWZLan0rDOSWHkPrN6H+r7DoPfWHGTjb0Xs1VIZ
	 7/5dW7rxYNEYbfL8sSvj7e4Ucx0IQsilmjz5kQ0A7tuFI7hM33Tjz6NOnk1Df/3MiM
	 +lntiDlB+5WmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC304C27C76
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 08:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167429052575.20283.3832067015247989631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f387262456e96178bbde947bd8c6423aa5591f2375f307bc3dea34044a19f87
Date: Sat, 21 Jan 2023 08:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674290525
