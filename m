Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384BC19C
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 00:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EADC433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 00:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679531945;
	bh=Z3FKFFRXb2/vklSzO5k4ohzm7nIfqBnasAq8u1sOrSo=;
	h=To:Subject:From:Date:From;
	b=eGo1RQeL8Hl3bEiQg2GWtvFQ8EWWbiEY+9TubXp7ybPOZ3TrQ9A8Vw+5hRNXWAZyG
	 kQfwPDcIY34tBjRlHil2h/wpcrgm/xPU/Nku67MnVMyX4a9ffo8SC4RM7CA8oF7TMV
	 CzC/gTN9DEruMSLLwkxoYwGXagjZ/Da5DV8H+F7E4QQPvJfpz4hZfWK+o8EFVUhsXH
	 ichKeMcFkBoezUBEAT6t4mNBz6CjlQPU2CO03C5HTHaALkCWH5mxPb6LnP1RdgDpk+
	 /JcXNozA4hXAuln3CsmBQJzhOBB8S4bOJQUrNYyQ1+73bwqjsbTLD3eHpPZxDXUD4u
	 FM551n6Dbfigg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED30C6FD1F
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 00:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167953194575.3588.1826512783422096889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bb5d77f2c028fe22d070fd642d61d44f049bef42e3d17d36b6444e339987bbb
Date: Thu, 23 Mar 2023 00:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679531945
