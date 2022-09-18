Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4CC47C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8552DC433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663466453;
	bh=ziyU1N5ZRw/zQOV/2QBma63WG7rMf617eP3yVqQ3lPc=;
	h=To:Subject:From:Date:From;
	b=u/zu7DAdc5RctXEgbkWAUCCnV9lQnTOmH6ocrEivAQMCOH8kDk0isuIQBKPZIlliB
	 2NdBUGwkFovOMUqROIFgVKXtlAGjk12NoGjGgW6n5mcKHIVvrRAkEifa/ou7+dOpO4
	 nP2BwVcBv+kwb4CaoKWfPc10bQERebtUVObjRV32MZAiBK0C38QTilcy8/actD8Xhi
	 n1eTqJTtcbPzaTlpNk78V+ZfJdpwGJGQmeom1ftireu5vOupVRSzmRtcWUxoHaMGWH
	 j7xHHrJ8E+Y+wvWgHilvE4/RSbYp43P+zhCwFFpyz4YOi19ioht5eqZbWiwNGU5gad
	 1XPMuMwrd4w0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 616E9ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166346645337.15196.7961890431650328032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05da45b1642c597f455c650f403612985cea4870a974c6ef9a401c93a3515aaf
Date: Sun, 18 Sep 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663466453
