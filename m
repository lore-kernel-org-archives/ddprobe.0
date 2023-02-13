Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBD1399
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 16:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D794FC433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 16:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676306045;
	bh=hKkPp9rE0uceHLRKeAvQm4cVGBiHC+5fh+CvqWJH5jU=;
	h=To:Subject:From:Date:From;
	b=H5ggPPfywNS5byQ/do3AkGpjGZtgIKMYklmfJowrCzsEw7YcKfD1x19vyXEHjv5jB
	 Y1eD00Kk3db6Bzgw7jvGXulLxRzopgwVhpzFv4szaq81jjdUlQ5MC5ldGhkdBaSBPV
	 ZW0XvJPAcA1P0o/RjezndDRFWbiRRyPfdeRs7GxJFaqxzqId1SoKU644QZSHvsVtB2
	 PKjLtB4MX7zYr025sdkm2lQLNneYpay0YDXbOJLJPfpk7plqS2x5ZTCMKSjISZz4fe
	 iU+TJleX6b8+bBzJ8hK8AtqzIygKr7Uvf+1lVMLLw8xK8meKF+dH+voGus/Wiw4A7b
	 rqg9Xcb9Dd06g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC47C636CC
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 16:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167630604576.22473.3533671317626032271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 456d3cdafcaab2abf292a73a54ea81479d9c779af0f143584ae2b57db3975bd3
Date: Mon, 13 Feb 2023 16:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676306045
