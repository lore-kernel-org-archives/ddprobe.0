Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6D52FB2
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 12:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8995C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 12:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677500765;
	bh=ICT2gTv4X/fOvoFnwVo/GmcWKFhYVGlxasYlIjVlULc=;
	h=To:Subject:From:Date:From;
	b=hAmqgnFvMB/PZn0/8T0br1J23L1qua/JfwQjGmxaid/2RtWsPA7b4rUzzkQtLfMB6
	 6fUqeSD6cd40jpLYeo9rzyEJ2iA/UwDUdom32+2sQU8BEbsc5V+Nzx6kiUmtLsToZb
	 +JWGHrK7jkUEEu9lJFa4qesC7/nicWoAylPr5MPj8yfuCxLQudbAxtVkE3Qc+8NuGJ
	 UkbvskEogRDHpn1sYC1yujnCuopMG/midEDe7kulHDx/yshBJgM6FpMTjhplIBsaWh
	 hjFL7wPvqU37JYdrhths88uIwSMm0VPEvjFUb0NWX5tSXFtT1uXx3hfHDz8PwoAFTy
	 Tmi+lRV/aJYCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC71AC64ED6
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 12:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167750076575.2063.11274938530759728277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0019c9d5ce0b6239adb1d86288fd4a18de6bc9e85246b1d101b4693b818bf1cd
Date: Mon, 27 Feb 2023 12:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677500765
