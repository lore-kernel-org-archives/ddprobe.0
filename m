Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD5D36B
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE28C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671282687;
	bh=MG5UaBijY+LOjf4Dw4H2MC21ZS2et7cu2gcDKzINhPQ=;
	h=To:Subject:From:Date:From;
	b=QUviRAcp1xaUsYkBp8GDY4faGDa5WUSoWBcooiOAkSbHKNE78EVHw3CNVJnACv0qm
	 lF2g18PQYwaDaERrWaBWdnIOtSDGOtBfx1rAKECs1SRIXK0MsAULL1vbtsvJMBGzew
	 l9s4TBr/TXZNLBDYzr91wAwuCr+Vb/9EDTDxS5/Hm9ImGku1bgXhx7StFJrUyPK5hu
	 /a+ro/40ShUmghzyGTWz3qsFjMeBHD96gTLd8emjaA4mrOgQML9YOltuRBG938iXSR
	 ysIzaxz8JECfKFc7UAiy5fu0fciAIRdJj1ZJT4fhB/BCKrqkpU4B8VtcaScDRrSqqv
	 vudD2GfS+I5tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F55AC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167128268738.10992.964330572486523293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29f906b3d66dcd5ec63d635cec0297da6dbd0030737407a9cf600d9da5a6b696
Date: Sat, 17 Dec 2022 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671282687
