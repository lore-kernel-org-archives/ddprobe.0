Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61BDB2AB36
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 19:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jexUfKj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4EBC433C9
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 19:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696621628;
	bh=l9CzMfl8yACEGy5O0wqvDihBlr9cR/TqE/q1hvi9P2s=;
	h=To:Subject:From:Date:From;
	b=jexUfKj1mpJoisQhAosBLC7XGMNlKK0fEN9aRR7rtq/Dxe6uTZF8yPd4NbtTc1Kaq
	 LMd9lv4wDVrfwsBsTO5LP7mNn01ML5Ayw5iCHJ+s38HBw4pht9Lk37yEbaHcY+ASD+
	 shdpTuwLjA6jXjqSKFrxMsUylztcpVM0yC1lCSYJbMyKtn38JycW3NTuMyunsjJX24
	 M/HZRzMbdVVWCPshr25kU9B3zCgfFx73gMa4V4E/JaSoJFKRDm/F2A/hMPtlbTpeAo
	 fCpjKX2iyTZK9+iBsB8oqIyTanLo1OLCWYzMrDSfSc2H0ONfTX78vu5D+AIhXXJEE+
	 yO5/KT617dfiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB832E94107
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 19:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169662162868.16931.7237176499743758676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 572b1fea75822d3b167258851659009a3c6fecf0867628593f955dd6966f665f
Date: Fri, 06 Oct 2023 19:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696621628
