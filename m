Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4764FA4F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 09:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF84AC433EF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 09:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674466325;
	bh=xiRVg1wB9Z77S3YQ7KF7FwghMNcQj8IIY+2p76tfBbY=;
	h=To:Subject:From:Date:From;
	b=Stutco15AWjDPM7K6iFIUrmJiun8s7BkcX9ZH0MomrhudKZs6n80Dmt9dLWTRExMt
	 B0LSGW6u/J0s2pk7pyIeV+rJEGhtg6dSSwyNh283bjxbckq19UzdgutU5ptbqsUzLr
	 1zxZiAiLPI0AANII5C7cKSnUvF3EHy2kA/e1/ggi+WQrwdSOtMqNq55oYYSvnWjtSN
	 3bBhuV1eN7co2tn0REhAsAp50v9HjxbrssKTjmCCyA1GlX8ngR1CAilBX3b5yIZkkn
	 pY8R8g00/bSFLpDT76AjLS0DwTpUmvpKixM+iIEgKdCVkScQ+yWyD9KG5DQq9kIqP1
	 ltljL01bj5exg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD690C54EB4
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 09:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167446632576.31901.11343369796222248274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ad5bdf6a2f1d447c49779d5b51fee3a7b6efd8a914b673ce32a4bb50b20b54f
Date: Mon, 23 Jan 2023 09:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674466325
