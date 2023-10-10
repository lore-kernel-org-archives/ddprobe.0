Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CEB31A94
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 17:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZfCgOLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9134C433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 17:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696959428;
	bh=5XGi2Eoi4j3CH5hmwka1FuuPITalSbpSdkUfMOxfMX0=;
	h=To:Subject:From:Date:From;
	b=UZfCgOLmHBPfzoNIdlR/xBW9YpX2sodqRCao94ch0+DXvR7YhKoFNV5wZNCWxw66Q
	 9lnRmcQPHNA86h1LIhlmkUQFk44ZkuIDsTFQZa1AxPpsG3X/M3PHb15hMoLDWViKST
	 /cP4VHr6zgu4E4ONxPi9TlKYzu+aelH3ezUMGgEn99y0SS+6iq7JmDhRPAB/+XZQTl
	 9j1waNCtSx4+aOgQfvX6ChTdZsXiMflGiA2QxoHQDZYxU4j2cZCwtCn4eu07kNfxlH
	 ijwOEfkkJ5xdMspauozAYlLaUCsmUvDV5W61WIPbsZSBsysXJGn2mcJVrQ1fO0ucEP
	 RsDeOkBqluCVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD53CD8CAC
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 17:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169695942869.5761.12233096468847488493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10700dc510f983d0c709adc305195b52ae54529d334f4055ccba15f596eebda
Date: Tue, 10 Oct 2023 17:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696959428
