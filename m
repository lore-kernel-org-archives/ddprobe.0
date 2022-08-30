Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC04D366
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 704F6C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661841653;
	bh=lyAnrHoQKfYjALDgsj9IPIvPBXCubwG6rn7sXWWPBFU=;
	h=To:Subject:From:Date:From;
	b=X7SZ6S8qlLrCdSX5Hu1WzuFTLPqtxb3WFBCdUxEImIIUDfotsM+r/e+Q25bIRJ58r
	 yBJkQN0rFhjDgCtN0B+nNCX2a21dxMtIOmZ3OpOz3JQ6pyZksaNJQkCBmEp6pbQ0xE
	 /Q2mfkhTXadeb7na5Q5BL38dYUzrNLx0EuvNja1Qg5OLbNAcD9pXrFEe1S8YUxdvv7
	 MoyTSbXnLZ8xEQ3/y6nzNDvbGNLsCWeZlhsOmugkL7vxYU2qzB8KZIGdTYp2CjzcL8
	 OeJ+toLdxQ+tXDfAh7u9Cjh0GJ6T1PCnh5QWrqpII7uqhZn71nqjFpCO74RRjVM75d
	 Ap7qIFiHTqN2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 544B6ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166184165333.15730.15008639145625060931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4baa6775f5c5565bbc2085a43b4dce4ed13aae8288ed707ee7a44aa3310aa22
Date: Tue, 30 Aug 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661841653
