Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7D6A47
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D1F8C433D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667523054;
	bh=1R/J29Hf8G3zyZlFN51xub94RDaAnq/8jed2pE/4TAs=;
	h=To:Subject:From:Date:From;
	b=kkmWSjbaUM39zB5ft3mIh6Xy4n6RiasJ6nPxMk5ND71oicFiZZkRZeWCZuZNqzCDO
	 KuKeOsgd6FUgOtKaKe5AOh8VBRv2kPKNww5E2lV1DDpUeAF+Fuw/UcNXPUHaEzG5Ol
	 s5UxGgvONmyfVgYpv0lPb7x8Se8k1ZU2flUdMTD7txo3Tx8pourPHAXm3BL9E/6xdD
	 zmLgt+PcXMEI64vTd4cwNl2BGtEYzAN0UziGD/wxogc0ZoI5dkzkL+XEh2VxiOtTVi
	 Q/3IuSOa6PEZck1RcPOaKOUJ5YE0ci2QPT5khZLL1jGo1jayQ/K9pj+32SXl4QZb8b
	 uvHGDcrwnJNOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D01AC4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166752305434.7492.1161460847729383628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c22859bb43ea6780657f369fbd53409e06f991ad34d2118aa016aba09ab10f3
Date: Fri, 04 Nov 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667523054
