Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60867631
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 04:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07583C433EF
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 04:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684384566;
	bh=bfxQGcutW4fwX99BP7Y6WAA3xzQFqbkrcrs5+i/38qU=;
	h=To:Subject:From:Date:From;
	b=A/wGYfa1z0Ex+1Goh4YRq73ppNWAsoloYHCCQsM6dOQVLPIAhD39fF4pVjPQgfSdy
	 xt/j2sr7vO4BWk+0FWwlc9AXRZYp4B084gZhG2wR/N/4U0YPZziC+gpuosUYYyRnLP
	 Hqnpo3LJluxMXxuI0oG4co2BsslskuUiMwd7tbNi4e61Fn3fGzrHm28bmGYgcdh0C/
	 UXMmvUi0UtIW1KAQQLmy/BE+a148lpLdEWCq7JWBT7Rvg5K13L7PvlQr5LShAt8gGD
	 CUEk7uFwZ1fqSt2ZFrSbZBCNv/q52Ml6k9FY0ml2DfTwOKlbVY12uacqFZP1F9yB3J
	 spEIDaRpGjIqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4098C77B7D
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 04:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168438456585.11718.4085106836609461339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b6cdac893412405989006ae0429ae8d36dc7827efe241cbe23bd596aefac72
Date: Thu, 18 May 2023 04:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684384565
