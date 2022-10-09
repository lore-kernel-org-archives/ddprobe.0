Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFE5F5C97
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C42C433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665351653;
	bh=7amZBXW+HRZJBQqeu4hnfimfH+4sKspBietm2vONyB4=;
	h=To:Subject:From:Date:From;
	b=WEVzW00VXR+o0BLxmevyYGxpyjK/yxTwxHv+4fnV8UpPZb+ofbzfL2PKDKDseRe3z
	 OnOV34hi0qn9GHUv0X2yRBT2+IJbSi/rs2RtDDw84Xx2FTiLJ/QdzqUUWeTiDmL0oU
	 Hc6v2ECxvGGIE5lgekArM+t4gGqdtWdbQNjJ2GjXj9HKlziU/7WcPOWYF6ReA6uqwF
	 5b+4Xp1KI/kq6irTDG7XvpLrUV4RUAcA4TNvP+trxBkbdvdw13gsJk+O766dI9KyoK
	 ztQGU6yQ2DqzYUOeyfskv1Mie/nt0Gw5zHxRFX6xZEtklq/XqCvEamig9uYtgzmz/i
	 4qaPDLYnkAnTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57D79C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166535165334.17838.7152102246348531952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb2468207644a9f709494afb0e816d3514822540912bd7bce16e2e6df60404f
Date: Sun, 09 Oct 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665351653
