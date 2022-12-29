Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8E24A3C
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90565C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672326687;
	bh=8ufASeqkQWjU2Zn+MR2KKxyenuJoxusl4pJlW5ETIJ8=;
	h=To:Subject:From:Date:From;
	b=Hl+uxQWe/CZBvwStdM9VQdZLOAe0/zrl2FSffmoB/suVnMt2mElBF+LzFoi0k485c
	 lvQaBQoABcm+Nwk641UxoOV0Kt7AgbJomPCue/FIug7jDLgqQJ2Agl68UaJL8zmzqB
	 Op59f9PfEh5P25DCkj2v/fJIdzYz8ekzeTyhmvSiYCMiYeCYew1m92u38s4qIxcCW0
	 mV5xj5Cfe9wQrjfNi7sUbFB9RCC1R4G+PeTylrQDqewKSk1qSO1n4MG0i9ns3l3+aP
	 wNGG9NzFN9Ck7auubHnZMzkGUhezPmr1GGtER0iFsaX1EF2El33dyEBIn2O/X3cypv
	 qFk2jEoj0N3Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70BF2C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167232668742.28830.4738052476157748330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbde8b1b8e7aee2a3c2f8634ce182472366110944bd2b2e7a969ad84f85c30e1
Date: Thu, 29 Dec 2022 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672326687
