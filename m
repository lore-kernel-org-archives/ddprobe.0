Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8637E
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86767C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668216654;
	bh=PdfSTPrgEKPizCPQULLdy6uTgyJoqhwdQH4CXGmfFX4=;
	h=To:Subject:From:Date:From;
	b=NbHOEHHvD9ie9u3bVC0XWPm/Te1sOC2AvSD+EipqiAps5M9I7iOEBVBf72dOIIMyd
	 kdBgd6TpF9zFogP3SaTeFJ0TBSvjRvISAjK/jxJE4D+PWZhTOSuOO0Mst15705zY+H
	 s7okaZ1b+K7GS66W5RO99KvQedf0LByotEajoda12hIz6Y46OVVIshMgZKIz9AekhR
	 PoS4c3C65QIJ8DFdKmPkGokJrYMjZ/OZIN1TSpOvIwZ2M1+wk59URgQGgzOTNk6FwM
	 92DeB/lU7NMNaD8a4aG37BWY4XQxpuw1RYto45ovQeaKqpVQ8CPFqtQcjOzoOTTcnA
	 RzhE5FR4x1Fag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68FE8C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166821665438.11867.4964471288197710136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f111b3ebbe92ed95e3694ca266198c72b7fd68eaf6735e4b783e08e9425b8cd4
Date: Sat, 12 Nov 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668216654
