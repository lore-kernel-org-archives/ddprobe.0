Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2DF174F0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 22:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A50C433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 22:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688163188;
	bh=keLZj2PEcGe7UOWjH6NCwJMHic0Y2H+nPzPIABMTLpk=;
	h=To:Subject:From:Date:From;
	b=C67b1LtwqyxRQRJN39kKfu2JamHt+2twdsZIbYSNKvAAPDWa+FS+rECo7gbAZKgIp
	 f/mHojiPE5gii41cORvR3uSvkykYCLYB18oJ9mbGEXaaSLl/xqFc3GtJ3iEQvl1Sbb
	 TND6O3yMJMXTs3AUAGuaRgBT65ewMxujU4CdJLNUWMyDr95XRPcy5r+inydxHy4vhg
	 opTwgCMrWofwSpIakycF46CBdwU0c7k0gX6o1kQF4Rgkpi0P0S9j33pBcaKP/M/tnY
	 MYpsKUlRWynu5Oqhy0gFtIMg2i0Kdws9nOx8LHggbCj9CGn53MFISIGhQJ4HTe2uqv
	 3Z3tGoRsCqe7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22E9EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 22:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168816318871.4753.9822805598781664787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59505ca179d5bb84befa4e0aa966aa58c8adf95193d26df8013f4df2c65f6cf8
Date: Fri, 30 Jun 2023 22:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688163188
