Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B052C612F
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68BF2C433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662759653;
	bh=Cl90D01IGYmy9kE5Hq9zy3rrl6pVEhbNCUTYPn3e3GU=;
	h=To:Subject:From:Date:From;
	b=VZdA3F3pXovqm9JrthoYFZSSir86bhM54q2XGPbhg/5gEYK+NMnDGh2hrTRjGGonc
	 wiNZ1opjMNPAHz5aYsGGfV1cPsIZeQD5O27yG+lCHGFEHoVQ1lD1e12Z7Mntatv+P4
	 YjdjW87c3cfzTNbAlW7GfWlchsGIdRpYhNmlz09ORcaLifpo4p9f+A3IvJBAbW9H51
	 pt/5UsZO2G4Up2hnd0xyk3mt0VIsBImyYBgwdygj/2COnJnnKkl6xpgnAiYzC3/HRD
	 cQEaMF86fHIaizhqvMtulsoh0goH/PwsWLHEiNUgGcY9sDsOwC4Xe0FCeZBWkmMaGo
	 Wd94VEJTDTjIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538E6ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166275965333.11226.13529625835184153992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 569fc4138556112d4603284c02a25f08efed9fce5390e52146eaf3bff106b818
Date: Fri, 09 Sep 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662759653
