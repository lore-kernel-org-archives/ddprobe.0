Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B01AD50
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 13:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB69AC433C7
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 13:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689599468;
	bh=R+/ugT54UUXwEkw0PtFY5KxOC1vdNttslhyCJ3SGgRc=;
	h=To:Subject:From:Date:From;
	b=VqvZYxJOTi3b3gKrnjzBkRR7Yt20Ni59QkyndhlJvh/yK5gCfXWY024ZCaxC7EuXZ
	 pCG5OoyUmfroCJeNPrgL/Sju86IBDac9NUMzMBwSz4JCpXRMmoEMW1UDU8+2VBpXY2
	 Ys/MW2D6EuXe9JlXPRsZGBIkCIAcKdsPhhGqHwnXVameS27rCv6lhWKmV5lSpg9zTN
	 kYG6YDmRa2t2J8t5P2GfbAmcsfuyKZCprF/jitKWSbsouFEacrR2FDh5lWL11s99oG
	 QS2b9SgtnbK6l4yAWeR81oRRmyKvRw67pPeA0n/sqyPp0qNgQtSY+yhnpUtMWsxfZr
	 +yNapxo7SxeiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31FBEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 13:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168959946872.12713.9940515227163983113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 572d354d92c6075ea0a12cbe3fe7b1594d5078dad35a0c775af174505875b0f7
Date: Mon, 17 Jul 2023 13:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689599468
