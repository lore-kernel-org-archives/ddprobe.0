Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05A87C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83AE2C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672651287;
	bh=ZF8Px9jqRqirez1BjVmrNhlTNP7FbnVnK2Ejy9/jnZQ=;
	h=To:Subject:From:Date:From;
	b=rx6SW//qOzlHiXx7aVyqt9WK3wQ/eaI2PfBF/97OV/DtAgygod39rO4ErxAWPeE1F
	 xH4gXNjWBpl/Scqi1WTMGnPBWs+U5fiNltQZCO7k8dS+xJx6Lp32YPlaUpYot8L14Y
	 saBjAbz49bMeA+wMnZEIsdbQDI0H6paBPAcnSLzg9UOanU1MWUD+WVNjLQrF5vXD5X
	 xwJCns/dvjeXO6WvzZBhwiBNf71dz26fl28o2AyLvyT2aM3VLyhS9NVoOwq6qEOwB3
	 IObZPtAR8AhaiJ42YDG3VuB0s/f3hTfjoUDE3cC5vYxns42XnsZL1aENV6AcYuPijz
	 Nptr6Tf3yZSFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61EB7C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167265128739.14389.10421413601978420626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfabbcc30c39ff24de44dbe904cb1d56b86cdfbb709f4de4b1a66824c439f13a
Date: Mon, 02 Jan 2023 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672651287
