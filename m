Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8D3208C2
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otbT6ds5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82D4EC433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697828896;
	bh=Wnm0ni5HmFaCZMgSEcUt/RXezbj8E6GTrPO3T32Fphk=;
	h=To:Subject:From:Date:From;
	b=otbT6ds5/GTokOZqqHWlcbzCknHOZ30cvUvflh9L8TPFyI7bPf/vua4o7lWsmAwVJ
	 GTJ3miZb/KINTbSqk5siGsWxRDO4nOsHlb3Z5IlP9c0UO3cmxn1QQoUl2EMzJIAa4u
	 cyehXHS5BnqKFo8gvzLGBfZpo7pi29S99kSCi6/FMw7EOnSxT3ZLCsCFYNPTFrFAtI
	 88xZjuEuLNZnF4gEiFMCx6yWAx8uz0ALVt25u+7jpOziRwaiaqKgFmD+QzWhQI+11U
	 Unq7bYAZ3Ke24Bk0NoSxMzslNzdTq1RX61rOIC/zIasq1nfqUk3ijRNIAcjzshkwt4
	 qgZ1fRiTmldeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E75C0032E
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169782889639.10562.13796223914487572119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf74fadd65685023eff64d54b357207052888578f8957a424a7cc937ace0852
Date: Fri, 20 Oct 2023 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697828896
