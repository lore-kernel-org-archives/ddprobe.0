Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8CAA5A
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 14:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A27FC433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671375087;
	bh=5wKB+OSyjrHd8RCyfpmWTDyjBKVituuCl/WRd5zSIkA=;
	h=To:Subject:From:Date:From;
	b=Lpn9tiH/UFZyDak+3dxCZA+eTdTXi+XQOdojksm3WRjjPn89AdcD5Eu6xYKARZ/t7
	 UfhywXXau4q9R8FMYn8H/Ux1iTg28lrSb/MxpZ3SmvqZgkly1VBI5c2PwYlJVhQ+dw
	 GobRLJS8mQJPZgXa+bbiXeiASnp79KaGR0CCWTSWdpxxyO1sP45na4sFVEIpDDb3JB
	 LHaQpUlga+d1r0sg3B4jyiizSEqCD+a2awMBBe3nv/CBozUUUeHknvTNPihLqk3+Wt
	 VQQ6OJ+SUtFuFd0PbcrvZXVDuBe8D2TYxysKjGbaFGuPhq3yIoKLzE1kFXbdHKs6j2
	 0YbULuGLO7wlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE60C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 14:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167137508738.6418.8054224924032733042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f02b0dcc41a0123a8b7d6220c7f65ca7261ec7601b114e5483c714de02758ef2
Date: Sun, 18 Dec 2022 14:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671375087
