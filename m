Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD9DB39FF5
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3WvNPlz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79739C433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701889696;
	bh=fpaNgUf2KVTfpLWOBaXvV2MgT/o0dVL93MafoLNEmQ0=;
	h=To:Subject:From:Date:From;
	b=r3WvNPlzvV//ULC6bg+xVzxiAyuXn9RvVxl9DYVwNdp0pLDS+1ImSG4/zSVcbCeQs
	 RbvVFzb2KMcTS0IWgiCbvTdd1jUVxxFAyP39j+3j3bjg+lts4VOAZiRzaw3rb9Ishk
	 uDpBMmeG7sPqK99RzOlbox+jnOswp/5/XER2XvrWMrmTtnTV7eZksvD3yEoEa4JKIu
	 TYKYV6X+3FV4Jbge/Pid9PD3Yw9Zf6gBLfiW7Nw3mGJwMB4NwUMxr00lobvxGd2fM0
	 cFOP87vfqBNe2T5tEgL+H8CtyQRrKwEw/+ZROu4ZPW4EFpvyawzIa/B/FmharyweQi
	 VL2qK4d4qZPNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6EFC4167B
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170188969638.877.2235825154974333416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53dd3fb6a092fea1b03e474b4d7f79414524d70b4e23054fc84c1252bd5ad760
Date: Wed, 06 Dec 2023 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701889696
