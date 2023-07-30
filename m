Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5A43D75
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 21:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4BBAC433C7
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 21:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690750928;
	bh=1gVBndFuVrWOkEuGoqvL79oGe6BkqZyxAw2vC7Qw7Wc=;
	h=To:Subject:From:Date:From;
	b=CeoH4r6H8ukr6JiRMDAuXtR1NTKDu90gq7Dh32SzFpL2ZzLyFuHhEFUWYdkoGlpzC
	 Cw8W/nc2cXcR1Tkt7H+RzJ+fpEBrz+yYSe/Ft94fnD+haexQ4h+BSyIVvbU85fo/Sj
	 FR7TpNn+IQhl2LccWdOWTDoCT4zsR9wuna8kczEeSeO7TVis0VnDuFLj4g+VTTEabF
	 iGZVZ9JB215Uiy1ESV/Om+oF0wdDrzxKJVkg67wYvyP5ZrdCypHwq2SWJOGBjZQt7z
	 XWqpjT49eqC4doyagU/wMeSl47N24u5Tn+a0EW1TEAoSN8mIilz8ah6eB0m4R6waoI
	 53UgYXq3IEOaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A865FC001DE
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 21:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169075092868.8304.6171654965845277700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24ad2e0cff4b8c2f52369bb7a19096fcda60d212b00a966c4b65b72c13b3a1c
Date: Sun, 30 Jul 2023 21:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690750928
