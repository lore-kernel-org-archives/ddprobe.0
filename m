Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D550C2F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 15:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA1BC433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 15:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688223848;
	bh=NgmEVTgtbvWAkc8TNfgPGtZmGlp/KIhZ0Mygb0wxu8s=;
	h=To:Subject:From:Date:From;
	b=I2n/Wp72JlRj7dtL6uE53M1ZbRW8fCz0Cp9RaUrjashnOFiVNgGd37lLAD3t91gjM
	 cLGm061udy3zVr/HZXSeqauVvFUsbKa1iO5Wdx54+W3WrmphnCQBpsI9vGr/Um9AQl
	 WMNkAwvND5LypXsKumIlyzH3V5cVWEkUv5ZEsAq56f1Akpd8fF9r9jkLZ3YWnzTjMa
	 dfS5Y/eCDrtIrNpz2m9PhWZ8dzvxht42Tcxco+kH9C1MoXicc0Dij64Tdw7Rh9f8U8
	 PlTqOOK7reSKztMFQXDnkqBUGWRm1KurerHK4yxf1GbmD+ImIBljNvU5R7EFm1Xjbl
	 4vhk/f0oAmWpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF946EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 15:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168822384868.3644.13991448313509994709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba259a092707d909b99a49c75ecad9ef7b76894a027340df65f31a13e91f7093
Date: Sat, 01 Jul 2023 15:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688223848
