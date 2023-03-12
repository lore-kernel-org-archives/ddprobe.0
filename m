Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2951615A0
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 04:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA98AC433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 04:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678594565;
	bh=NBaUaALxwokGtXubB7GOXNEkIaeFsB9GxuWgtHhnavA=;
	h=To:Subject:From:Date:From;
	b=lcG40EFDDI/bHub9Ei+augIH9Khk9Q69TGqM+VXLA5pSMkvDTri0UD9QDSZkEfBCQ
	 +4nwUiawOQvJvxF7tV0sCfrpUtRvDpJYtVmtU06cOGvEB6Vqj8zNCudm5xFblGktrW
	 CPvu9ilSWiN39bWGnnHDRa7uLGFKSY+vYAkY+7E1bpVA6ufGGtJr9waah2i3pPimh2
	 Yx38q3jU0OGdMHQ6ofXS7TkSJWv6CkPKNCxjygDzGYnRlhXa6/bA08MUp4aEQgfbjE
	 meDRzrnLvU06F+sBdpFvTpMpuYyj1d8RBmuNe7o0ax9+c88AaDary2uXbd9myBklol
	 2b/7kSE1HRSWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFABC6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 04:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167859456575.2975.5646616966327717618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39434066a9383da7dc7c595a35e9cae292214369323e385cc184b61944405103
Date: Sun, 12 Mar 2023 04:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678594565
