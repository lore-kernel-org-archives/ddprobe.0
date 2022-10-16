Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6DAB2F28
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70F73C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665951653;
	bh=4f0DKzWyavGn5Ugusx/vC/wHAXGDNAfSlkD4IyOuczQ=;
	h=To:Subject:From:Date:From;
	b=rKyaZYd2PbIWB6mNDwSe/z2RPomskGYkduIYf1cA6k+K6sWs63ZC35Nv+9MmXcy4N
	 Jp3HptnjU8OVW2BEaFQyXNzo2H1eBCU4jPkURXaOeWpooZItAZcf+vpmabN3I3SoQp
	 A3DllfuVICwEt7yy2OGV6oP/MdPRCg2EW63TBmPB4CZzTmmFxdtwqnTvQKnp0x2jYE
	 Uo9RDvbtD4y+Y6vd/bf22UXlru1gr7Ls143X1hiGM+Cf0E1i4SbnnsEJPfWAOmxXQ7
	 NO4M3gIPrn01Yghq1PX+Ua3TWtesUY36VxZAeX2r7JtvtuD52M9kSiptYEc63HtCdJ
	 db/Cd+beoPf+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B5AC433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166595165333.28686.17261892515906186447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2edb895ae33044885a9dd8cc049179ec8a1c77aaba4805e537e5d8521a33597c
Date: Sun, 16 Oct 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665951653
