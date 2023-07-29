Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 825E210F7
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 10:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42EDC433C8
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 10:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690627928;
	bh=IH8FmtfkRBJkegTtiUJf3WM9Z6sfNeNNa5nK3lacn0o=;
	h=To:Subject:From:Date:From;
	b=VYgGP9kgn+yTDsJ0fGWGPVji9m7i4UCnBsZseh+wmuqj7FpvsQfTRoLlhNPAC0hoF
	 /aehMcOZy3o8jXU87m67Bo4C1xWlQJtEhhW3BRjWUgk+/NNAUIxi4Nbb0tsF/AEgQF
	 xt7ZRAfBhHs5nKth0H9tqv462dhSZ5WlADGP+7+OCjJuRk+haXPDifpYAVbnk4Px0L
	 US1/C12s3tagwqccVh6Z0WgwvdgaroU9JzxD6Ph1p/4ocuD4SFbpbDYVpkIIJ5myk3
	 I4Iv1GyXqI+8+8os9X7SjsUsZiQ5L/wZJx8jkpayJJKbo3XhIjPq9FuS8uZO3jcFAd
	 4d4ts8SH2atpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B264CC001DC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 10:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169062792872.3544.7781136111826559582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55756e45b53f40c6fa5ab5ebb4926bab64b62e5e309e091d8f7cedc57d70b11f
Date: Sat, 29 Jul 2023 10:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690627928
