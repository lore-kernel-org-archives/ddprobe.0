Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C254629
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 15:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2B1AC433EF
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 15:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683819846;
	bh=D4Vjk/V48/LGGyMzqs6D5r5oeTpzwZJFBtceiYotz60=;
	h=To:Subject:From:Date:From;
	b=eQdRKIrpSGY/1Pox9cTnepV004h7iyMC7XsireD890bVrHZ1hyh9Vcng3j+6Hj1oD
	 mmkJRuL1Ph562cxHu/cl72w05v4n3v/mBIuvvgPE6xu84832IJwoMQ0Gko+pTmfL94
	 baXt5/F9ioYRc1xuHLAYgyLup5UU+NE9T8OPFmFLx9MaNbalg61m4HzlwiYCgROKm0
	 1KzlZuBmdcYGZmu6jiPCpW6n7Ul8retUqUxSgmX5fccQJl5kxkwuUnPKcba45cLODu
	 CQS2QNRgj9ix2P0n0KVP7YgB97e2WOfTpYyOiFFUZ8bqVlnmwyI1CsuMWnFWGapiyQ
	 PH9vb4RI+yWpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0D5DC77B7C
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 15:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168381984584.21855.5220557295325164585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f987b9ad53bc3111d9baafbe6f236714cf384cd958a4a8a0e4b185bf6748634a
Date: Thu, 11 May 2023 15:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683819845
