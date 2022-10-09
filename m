Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68521876
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 729E9C433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665334853;
	bh=zgfLIfaObDvjEZ/CCzq1jWo4BA+AfoyzEEmIP8z7PRk=;
	h=To:Subject:From:Date:From;
	b=oJmwW7sX7mtCi2aa7JW/ucTMmBW+GGBfkx4S2/bGFrBAISZmuz9WmlBBeyoB9jPgR
	 j0kTlyY7VU/cVIsQ/ZjtG29jxz/WZhywPU8toAllVLoOy9zVoiJZhzf2JWydKeYysk
	 TIp1kLX8Zba+v/3GAMuQJE2Sxmp115fSlVgyQuPHUKPm877CkmR2C2YjtyAf2neczV
	 9Upl6ZUcUoRiWkmzTwlkRbCWmEOkIFc5qHNpaiSHcGQS1ny184R6N4W8jQYaXEPufC
	 GAWFlaAV6wNrp5WuJWXZWX31SVvGMU1MkHgB31b0otOC4WdRVT0URacCjgQpo1Wt5k
	 s20+XuE5/o4sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57573C433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166533485332.2062.14887043009919754171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adcb77d3dfd5da8b9422b29fb78bb35bcba9fffce4fe59469049a6c260c5cafe
Date: Sun, 09 Oct 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665334853
