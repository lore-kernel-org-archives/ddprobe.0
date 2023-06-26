Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B5CFC155
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 19:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F328BC433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 19:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687806189;
	bh=ysOG9m1J0Aijx4QlSqj5A7ACJnLsJmvd+w7czG9DGDU=;
	h=To:Subject:From:Date:From;
	b=sq54lsrxdczTWIZw1BR5IC5kUtftB5Viukn4dXmo1Hagdr9IOLOCcb0qbpmV6f1w0
	 Xxt0tIk+37CVzlobw+FzYYUbnJlIfgcZd4CLqf1C/c6LhqaJYLk5rG+ey2twCvZihF
	 LTBBVPwtwyPA6ppVCvq4z8Zx48TsRpyBBib5+1uRRwLwQmTYiKiLOcmjyGiBhEMKZa
	 Sf7eyBT3QVP99IvMgMvdnth7lPO1kqAbWHwgWZ5mnhSKGDIAlMKNFJdDHk9UPXqKKe
	 dHn5k0daOPI1eStvEcwU4WTRsnYb5y+BvalaFjkYIT2tTfSWQ+JmCdtBRL6l/1hGWp
	 5U/BVbxa508dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3BE1EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 19:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168780618885.5030.14389702204015812774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fec0936d8c12b64663ab66d35f1e844c84e0996e70a16dd48fa834458a6d6d8
Date: Mon, 26 Jun 2023 19:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687806188
