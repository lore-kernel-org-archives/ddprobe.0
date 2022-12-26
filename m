Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2156EA5D
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD67DC433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672073487;
	bh=H+wrmBt8AEcxcD2Q+pfLamc47VPP1UeB27SdLXsy7Hk=;
	h=To:Subject:From:Date:From;
	b=IZb9Qr+5k4DXjW/EAB+W5nCIi7S1hKxH3ykS1mmJ1qhsoe4ZGZorDGbpusPAHwemf
	 6IxV/MPq4uPqw8oV61PxUYTozOwhW44Z+AoTQ8VJfHuD/0lwznK+TgR+vAcYQHVzkA
	 mWETap3ERiTJItMTsrStOz/t8lUbkT70m4JnTk4sKHiHzxYoM5mMozizViXwD1Th5f
	 mdNK7EwRKwtXnJXaXm/kGW2qV9KyA4QB0ZgmMNYrQxYGbzCDx/SVa+0RWFuhF6DfLG
	 QBiDNR6fLAo2rlZTKlnxKp1uxdoi2yjQq7bawYpB9RL5h502nebXo1OfOp/kWlvtC1
	 2zKLfOpoCWWAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B37C4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167207348754.9842.17541916668864690025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93be00443df3c83cf7b44c96fd10e1c0ffa7ed6cb9f264566ea27691b40d32b
Date: Mon, 26 Dec 2022 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672073487
