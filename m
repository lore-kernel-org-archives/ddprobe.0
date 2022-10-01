Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCAB28EB
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75FF6C433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664628653;
	bh=T38eIGEA5kMPUzmsPTkM7blVT70j8JkAt2p2lHO6AWI=;
	h=To:Subject:From:Date:From;
	b=CMOgmsdwNCJtupec5vLLfttfa/dPnR2UneurPTRs1drFTefi1xEe03lkWv6zPFts/
	 bR5FiuckxP5B92c6kWp8VYWY8QABajFfRdBQxDu6AAHmPLG0m2ORmRQUNpDv5jg5RB
	 hpl26IX3Vn1eqhmcl/fmvQo7qRDRO9C4YynqTM3YgbWIWvOioT1RrPc275fvFwlRk1
	 AzcbeIbsSvQYA9CR2JA+ZoK5gGZJo6NKS7B2dhCRcBEX9v1zQ2DggBOQ2tl/k3D5Z9
	 +UaO/Nsz8e/AyiXIAuEQLeZRSOV+42y1Inj+rs4mwf23t+Y2kjMznv4b3BQTscuGRT
	 sHUN2CEHB3ryA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5843FC433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166462865334.4697.16060415197390036146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e595620c9e84b23d8d5d220592aead032511b9b01f39236d568c30d9651d02dd
Date: Sat, 01 Oct 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664628653
