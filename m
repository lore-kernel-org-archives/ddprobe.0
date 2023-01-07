Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9D4185B
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2098C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673134887;
	bh=CRtnEemAVyxFoNardjFFrycmXQXRrP8jQL/Zu42e4QI=;
	h=To:Subject:From:Date:From;
	b=o+CIE2yuYFalLoD+jTxGhJxOcQlEjsXC/ByaNMsCpOdONf79cuzlO2+ma5/cLGoyl
	 q3gdRECafncwR9eDBSciLi51VeZecHFYHziwnTxeKQR5vE0rO6ApxtNCUMTx+pyEdR
	 FPMQ0j7b+O+AxLBvgObzGOEFP9aCriGtqArAAQSk43WqwQwB7wWYjeaTl19t6lIYCt
	 nighaNmgqLGKvQ6P79DUdFIqIPYpXtmwrBhBjl6E9ZYQI4nX+c114sZC8IB0Bqk2ia
	 8L0ftjPO+CsthcpuyyY2dHO5Sjbt4hMIusd/fslR1mQHRRLYBFRu+ejqGHyRWxkX4b
	 KIjjZP/A7gzvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81D60C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167313488750.31777.4944530636731911519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00d3d123603affd2cfe9f6e4c171c974ffc3ba54e6f77e15dab155fccf126c65
Date: Sat, 07 Jan 2023 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673134887
