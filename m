Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528E8290A
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 14:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02FEC433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 14:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687963388;
	bh=H1198laiJ0n7Bh2dji9dAzcK3O214udkOckEbL28MX0=;
	h=To:Subject:From:Date:From;
	b=j5xMMPECCmLTRjFL0+J8RSXRePbR4pelZkRXT2HNjws9yWVvpTSkn2a1ThHU7ZLqW
	 km+3KejrrSVIjCNVtJSXWC1peEw+jRIybODI0LispqZg6FN4s8MAnJhkxiBYoVOSja
	 cuXDlF2t4b7qAgo28+rjVoLTvzZ3A3Yas/u8x4I5URVnl7JRBf+NIx6/v9+zLWACTP
	 /GO3jNRtz+vNQRZ31Kswd459H5fu84+k97a+TiURit5hm3QrYl6oLvcNOIgnx8upi+
	 Bf7a7u3umf9GV9kuQcgB/EgDTtAEkA0jrSlF3PJoH9ZD3lPKKUUR+3dGFQyCpINEnb
	 ZIYbrGCY76xRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA436EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 14:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168796338868.1666.695241593799560937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cf8e8a9a0d008d2ad9bc4f8bb313edea186f8c8631b5191dddc5e21cf8b551b
Date: Wed, 28 Jun 2023 14:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687963388
