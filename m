Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAC6EED1
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 13:09:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D20C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 13:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686834548;
	bh=GTR6pDMNi7aS2xfPLmE9rlYREoQcw+RpjaKlCwSx1Og=;
	h=To:Subject:From:Date:From;
	b=VmDdZIJXkt1WSMPgU9lNonQUkGSiDu3X3d4Nb1INy5Mtst4dPNukOlzTutY4TNFWS
	 VIiKse+VuSuTYRVH9o1/Ra6m1lQDFY7No85KeHeG7gtMtSJKiwFz9Lp39jlyQr/ahe
	 VdIBbqT6jf6xNQHDEuOZ+PSn9xuv91yfQUTx00JyAYNC7dibQ5zjFIoRFn9ikNcdry
	 z56xrL1sKfCU9GRcaVuBgC+56LFDi5j0+25QOv9QQOKHfiZ4csGoNB1E8eLj1xL2LZ
	 +aKQxIDRHTFfub6cFpHpnGmGb75/QzoKc9wxHXNazSFfML/fRTlDguhpyD/L1G/h1+
	 Fo8CtMq/2wluA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8887EB64DB
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 13:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168683454868.20836.18046132648245822081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65768bb5203fa73945daba2df47832d38bb4711ffa8e668fb6466987202f19ba
Date: Thu, 15 Jun 2023 13:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686834548
