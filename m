Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D59CC7E4
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E63AC433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671409887;
	bh=WGyu8CaNGID8FKxihjXJBodPIWKzGNDmaQQbgmgyN64=;
	h=To:Subject:From:Date:From;
	b=Uag0xJEzCTAVN0DaEVbtWOfhJrj4Lmhzpfm4SbgaOPQ/Ipae7FMO+rXqGrINsJqop
	 X72IPCxzIBlrcBv/ZewtkB/kNP1iWz31aCuTbaxaCAAAFiR2r3vF0psXSHJ+bxm4Vt
	 9WmB1Ane0+0c5eyZY14Ga/nZgJS0Nl1SGCt9lcjnBZMvekoP48BnNQtt14jN5jzO+X
	 uDux3OoegLck8Szgy94yZF5q/hYBeoTr5/0ZaUOke9GrM5FEBJEZzkHGLluXc619lo
	 LYCZzqxR9LcG+hm0z+zs8BGgDlouoYwXxDZHBmhkeNDMtmE3VMPMwCJ2+2NuPaxdSW
	 SK2kPVOP2b/Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62EB7C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167140988739.29308.5556127191490636689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20a14d0d1ebff58c49df7164e773dc4762740e8bf13f497d9000b3ee5b83f73
Date: Mon, 19 Dec 2022 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671409887
