Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BFC736C
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 00:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94D6C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 00:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679877725;
	bh=67uR/XxKkscucrLpVaKTJu/USoMyk0JWZGFIVDA5akg=;
	h=To:Subject:From:Date:From;
	b=QaPDKpZ1gmWYsgR0tpAARFo+M7fuSv+KsGZrdyhKpaLlVHsgakzhPrCqOmdixPqXr
	 hFMVRTFo5UnIxOY6CRUWmumut8pQE24GpEhSX4GLSfRagoPVPgBg0pDSLoRpX+HzxP
	 hoeJ2fZ33DW/cg1k67FOQi7lDO44i3ECkLg0uHss8E9Q2mUFble0fMiupiZ6tNAhV1
	 X1lYpLue3WBdcMH044UYss8AFLHvx8jw2wXQLTgeloBGMEnxMEjO8dkK1roj0ThHNr
	 ckNSApTaAT97hMjeb5k1CgaIOgIt65VqA9v5ik9mG5S6r1XTzi0eHShzgHW9Cw3h5k
	 8xvJvV4PiWoxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8D3C74A5B
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 00:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167987772575.2499.1710646492824072519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07359e200211170e2f17f02a273c2f96287bd2d05b0bbf22289ea1237bbeda12
Date: Mon, 27 Mar 2023 00:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679877725
