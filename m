Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456F4748E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 18:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E286EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 18:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674324725;
	bh=akaf+qL8dwg2PCURL/hLU3usTKBW24pLc9y4NqmG0XA=;
	h=To:Subject:From:Date:From;
	b=fTw/NqPipryP28Xu86SRtSdcXh99pZNv6/Kzz+q0adO0iBhEtO2hGCeAZfqk5m7I5
	 uEcgbrDV0LxLfstCFSHckDV8ghifGjx4PZacR4kwgUEZ8lRAKmBYsHv1jdLDN++8e0
	 nP6kXGRDMvgM0fxumJbyYsaMuaL10xX6RWkeBNe2jhEpXixB+tmwXPVpwxK7rxkKFS
	 twEBUch214wvoQlit7JIJ/dz+88xcShTzDiiDpuhmUdAzuI+t50+tsmVH6E7PsNTH9
	 wgK5CfbaiKAKyMSSbty67BDUToOIuEbeOJkMyg6X3l+Ur8olAWiKX9CP1qEx9H91k4
	 gXjTDLfOfv0Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F0EC004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 18:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167432472579.15838.17569033402247497395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5188c6a87d90e69f9d2a1ef13961a5493eea6881a434bc48a8c0e45494003115
Date: Sat, 21 Jan 2023 18:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674324725
