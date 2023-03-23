Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E0C19C
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 00:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0601AC433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 00:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679532546;
	bh=L0X4wsxdFrT0E4U/a5sBWsd+a/LF2z/fmpwqc1XdMGI=;
	h=To:Subject:From:Date:From;
	b=lA8pzX8LR+DClbDxFMH2MNFpYEs2Fp/71DIUucpCgmGQrQrBWaEqac666UF2/kcii
	 j2voYccH26TBrwKl43gAxKHwEQkvgcDdYUs9HHfmj4BWWZE2qCGKMJ2kI0MSg6FFS+
	 T5upWIfAdlgsE2ZWbgtcIVk0Ub0AINfE29sqnEkN4hON3lXR+L8WVJQUkLRswV5RDb
	 NLfWWYHdCAyNezt2pB2KUMn6GrkRPY+z0Luum31WeD9rbl3eZS8crJB4pGIyONs747
	 Bm0w0RhhK9P4ZDylW5FWHXB2e1/3+25GW+4tjjv9x4+l5Pb27shi2tMRvRJclddEI/
	 MyMqjwOZI8u4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF570C6FD1C
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 00:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167953254587.3528.10940129659371599815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd4b30e875cd345bcee57aac4c38663e7b8494ac819eb8674e38af49dd64b337
Date: Thu, 23 Mar 2023 00:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679532545
