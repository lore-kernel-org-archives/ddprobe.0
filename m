Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF084523E
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89FB5C433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673319687;
	bh=gjHhPV/DmTuYsetp9k/y+G0LQYBrTCqSaosyP0F91HM=;
	h=To:Subject:From:Date:From;
	b=ivMyjBLinnjiN9q7EuQLhiGlHjFpYuGXBHuHC9znVZDxi/l28Fyxj61mwLySZ7mX8
	 MXcQkkqIV6I1gLtthP+Fppcpr+1SFX43CET0f/UUfz8uLRE15d14MzCDqNjOOKV9xs
	 T+MnQHRKYfLdcizyn0yXMp80CcFoNTVfZz+mxxw7Ppe9aFs7LUjsvpr/V/8zUHi4Nd
	 6QhQYUl+ivFLndeCdGFX5OJDpQCVhsA5ByIq8WVt6A3YCV1m2f/dCg/8/kmFBmeiIh
	 WQtiMhJ+2vseUdAiEJeLW2TUVF6gAzF0htj0gi1DfbHuA4kTZy5JdIoZLN370x3BdY
	 Dx6OouGutiUTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B389C54EBD
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167331968742.31951.8635815860214711670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28402315cd2ef5707811a4f4c01a56393211fc4be1e0675251f9e79fd7d0ae3a
Date: Tue, 10 Jan 2023 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673319687
