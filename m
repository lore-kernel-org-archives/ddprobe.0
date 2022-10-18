Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA22F5386
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D507C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666130453;
	bh=unIxY0o2qJ+S23DnM/BVr/PtZWZYjnCoM+gu7m3OKQw=;
	h=To:Subject:From:Date:From;
	b=dagKo2YmC3VXzha/8TKMlRWiNUKl4D1XTH3VjGLvW0SMPSIK2nRSldO3bGL2t7k0T
	 Jx/DvgOC/BLdZQX2DNtMgfMNySMCIAN3egnrYF17QtC64anE3lF/Mo0SN/iOvczgY3
	 YRZozy57rntE5D8hyWNhWxLvSp8CNMNK3Gry+TBqlTf+bJ2YyrLv7xf7uD30I5KtLS
	 Mk7x2NKQLWH3hMOpVlrOsv+T6Z6iUgrYOUJLkhlBsw4SgaVUzSQ3IiTQRllX1HVY0t
	 0ESqYMOSAVNfXExP+gOMatoKIBqkRTjCpPcxPBZA0V2BrFG4/R66H2ii54IuUg5DPm
	 hYnO2VLxd+Bzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54863C433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166613045333.16666.4647386333210583659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ea1f34e2441449833044a4f30228008ed99ffd07c0428f33c22e60fb84883e1
Date: Tue, 18 Oct 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666130453
