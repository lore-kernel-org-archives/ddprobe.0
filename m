Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF3815A3
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E22DC433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671758487;
	bh=SrCy3ogx5QS6bbNm83mBB24iVzp8UHCiAFT2u88QEd0=;
	h=To:Subject:From:Date:From;
	b=nWeTI1yCfBRnqkkYXpC1RmMBvZuysvKgCzmjDnX79xLKgzILjk/Z44nQ3oxRMNc9V
	 vy7qizIhdc6G47xue8ALUzz955MHrB3v9weUNszpz35uvang2eHCuuFXZBLVdmvovS
	 x3tvnE1FwI/XG7ScC3E+XKG0jDp648hpuFLSZiCRWfHp06CXb6U+W1MmRAm5Acy/7z
	 xjOeda6x/VzJ2O19QqeRvNq7X3Gn8uyy+sLs17rRtDpKbWpfgClaxEU1slzFrR48O6
	 EbUZXLxwDtWudRkCmSp9qnO/On4QHdVfpk8ksLqPt7q8nSMPHuKovYuJkpFzyFeOdb
	 IrloEAxQllz3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65732C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167175848740.20745.10573236661331435873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e01d0cf2796be4d692e141763e860f4946298c99ebc632f512041aafeb8b8bd
Date: Fri, 23 Dec 2022 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671758487
