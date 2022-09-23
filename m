Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23AC15B0
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A653C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663898453;
	bh=s6WgFa0twjdzik87BX7kaA3dtJC0N8chcFnoZ9R1tCk=;
	h=To:Subject:From:Date:From;
	b=WJ4x/7gKqu/OoSQ+5aTPF9P9PMctV/VwYcQzGWJIANk6fSbbWuUutto3YpsDRSqOV
	 pAiODSeoW+aaV6o4dZBX+gD/ArhjsMkug1qdaQxbZ/2K8Oct1McpCMfhkWx63yZ4TX
	 hFHc+azkGPb4Z4ckF2GOYRqFnIUe/PEODoCg4uEUiA2MJL9K3NnrNwsuXPeOwOEmvF
	 q0w7hHEiSZMia8TvW0PylfrqvXJFlLJ//7HXPZt3UBF38Xe9tFU39ZGlQ3MUD7n9zt
	 bymbLTh+8g4hrZ4T9BCuZ3Xeo90at6cQp2U5j35VNEjR0gcl866o2gwJNH40/L3rUr
	 VV2H5Q2XaGZfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F57BC54EE9
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166389845331.32522.6025728418408231145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6369dd00fb4af8500a13035b2e71a90f7e2361e919b4fb581e54ffe36535336
Date: Fri, 23 Sep 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663898453
