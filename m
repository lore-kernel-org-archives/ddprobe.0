Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459BCBD37
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 10:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C0CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 10:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674296525;
	bh=sD28cAY/vmAQmoMVTHfCgP7+dssXwwHdc+0JwlS57rc=;
	h=To:Subject:From:Date:From;
	b=awhUcpXOsqIdyyLpqxiSPpCdH0o+h6xEHUPyw8moUIskbEOGpeTHvik90qykE/E0y
	 9e3+UUHmxZljVljW+NTJB4XpHbxXcg3RIBeO0HlM2k1wCHkD3NaL1mm4KIi7+dOl1q
	 Y9h4PEuR7JTpF03iBPP3NI7/isbLTO943Ev5WPEICa7P9mtkaeZNLRV1HQoxsgpRT1
	 jBKvBXPfNl94dCA+wut7CrohpJJJg9HHCaHGSiY7soM6w52ftRUuRjLx8cVG94gHGB
	 8m52Kt3/CGBN2tEkqYKd273FOfCOzSUNAnaZ0p7by0tEOWnVjp5lJEkCTofm/M2i7l
	 VHV7ISOhAaQPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC67C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 10:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167429652574.8847.14393300359411480453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf7892f59b7bc4bdbd107be74b3722d72b9b1fb87f0f7fad0e86489edfc134c
Date: Sat, 21 Jan 2023 10:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674296525
