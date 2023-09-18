Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5624C1FD5
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 04:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8924C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 04:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695012308;
	bh=OhOHU1ToUPHjesP/++hDSDMtdYvGGDS7W9AyiqVotNY=;
	h=To:Subject:From:Date:From;
	b=dg5MGnSaXxARREmFVu48QRV6h6t6UqXyk4MYwlh5Z1kG2f8nzoz+cWAsiKYZfaMma
	 jHvBw37hURx8TlmUlb4AYkqe0Hp5opBCMJN3Zs+lTFK0DV9WL9I6WZhOjjgYDU1dAB
	 Sz6RH29inlhPL7yxGtrlajzn4tadkPmhfQFv5mdfzIGPkOd8517HftsLUH65vwpjSV
	 oHKE+1UpWI2ej/AEyjS+/Bfb1w8houyNBA/2sGDnCK6cGFl9O8fDgPuXq3n7Fx04BH
	 XxL8MK28TZv2A1D50eUF7pL6G4VQTiFPeI8QMOlhhYfyJyYOaFwxRXWUvpS0pYi8bV
	 dPvDoXyZv3sug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44EACD37B0
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 04:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169501230866.5996.14217485236298022234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0196c55b3eb0c51c216429321314730f806a70c0abb620f7eb3d07a0067d30d
Date: Mon, 18 Sep 2023 04:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695012308
