Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AC263D2
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 17:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC5C8C433EF
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 17:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680112626;
	bh=yi++EhTGRo9xTs7q1glKwogW9Z35nSZQdthiBVR5Mmc=;
	h=To:Subject:From:Date:From;
	b=qaor4nlPvjOi7kQHuyMtCRQU45fLoO2/OaGZ2QzNOR+Zsqdy/Fzur+avBtMtFrw2E
	 +sEEY6JPfeWME9Q0xxGadlewgq7cFRwRRcawIoftx+zvp1fB+awMSO4n34PApx7iS5
	 5Gjr7G4iHeKyVmxwWRu3T21uYTul+QpcsFqYbtXx6xowXbIjsQl14m/3Sv9zbM0zYC
	 mLIjpmtCli/0NO3IDxBiem+ZdH7MlIbR/6Q6AN9C4RagIhXKsRQYytxeqVrJP58gUc
	 wP7AT2KE4/rFEKQmIiORRx04JidXiGd9D5FpkJtcmoQVqBmSnCf3aaf5sLtR/BBWlU
	 LGlCPqsYFgXMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1D39C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 17:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168011262583.11498.1502901971163670803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddfbbe30a46494b5bb52a9b2b5f24faf648a3e33e7e6ea6467bb9dabaf2bbbf8
Date: Wed, 29 Mar 2023 17:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680112625
