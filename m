Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B98525C
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 23:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB27C433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 23:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690586528;
	bh=P+k8LTKoGMnlIaSftTu9CCSz9e0AQ2Tc19WUXLpyMns=;
	h=To:Subject:From:Date:From;
	b=koXcm82zehU+Ru6PFBSweOkj8CB70ZgQtOCVPS9RgZBcK8jB8mqIZVwEsiz+k2HOf
	 C6aa9EmmmFDsGwo+so8PbGTJz4fzqIgcPpd3h1LVwlywkg6QsGOXvFAIFuVz4TbF09
	 ee0BmBOAk0GQ/Ob+Ls7jdDthSL0gtF6+JHOCQEPVmm1iCPnyR4DFyTYMnb1mt6TyJE
	 tm5BzrbtBB+zTrCDJMnX9VGgM/1A3obBErdXEX2CDv4EYryZDYr1ijhibRcBM7XwEp
	 i+8isE3mpCKomDurHpiaVXQGDFaulKQ7Zu/bGqlsGKq7Ze3cBlXOb6T1ufvqLtYFnX
	 IJl22BygO1FuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3884EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 23:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169058652866.16679.13965149040990446222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f4d43720197f0e3ef77c1d672eb36b1d8e98fa531cac4cb7f627f2ab64c6c7
Date: Fri, 28 Jul 2023 23:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690586528
